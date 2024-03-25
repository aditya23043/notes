#include <iostream>
#include "libs/glad.c"
#include <GLFW/glfw3.h>

const int SHADER = 0;
const int PROGRAM = 0;

// ---------------------------------FUNCTIONS-------------------------------------

void checkForCompilationError(GLuint shaderOrProgram, int type){

  int success;
  char infoLog[512];
  
  if( type == 0 ){
    glGetShaderiv(shaderOrProgram, GL_COMPILE_STATUS, &success);

    if(!success){
      glGetShaderInfoLog(shaderOrProgram, 512, NULL, infoLog);
      std::cout << "ERROR::SHADER::COMPILATION_FAILED\n" << infoLog << std::endl;
    }
  }
  else if(type == 1){
    glGetProgramiv(shaderOrProgram, GL_COMPILE_STATUS, &success);

    if(!success){
      glGetProgramInfoLog(shaderOrProgram, 512, NULL, infoLog);
      std::cout << "ERROR::PROGRAM::COMPILATION_FAILED\n" << infoLog << std::endl;
    }
  }
}

void processInput(GLFWwindow *window){
  if(glfwGetKey(window, GLFW_KEY_Q) == GLFW_PRESS){
    glfwSetWindowShouldClose(window, true);
  }
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height){
  glViewport(0, 0, width, height);
}  

//---------------------------------BASIC CONFIG AND CREATING WINDOW---------------------------
int main(){

  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow* window = glfwCreateWindow(800, 600, "PURE AGONY", NULL, NULL);
  if (window == NULL)
  {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return -1;
  }
  glfwMakeContextCurrent(window);

  // Init glad
  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
    std::cout << "Failed to initialize GLAD" << std::endl;
    return -1;
  }

  // first two params set the location of the lower left corner of the window
  // 3rd and 4th params is the width and height of the rendering window in px
  glViewport(0, 0, 800, 600);

  // However, the moment a user resizes the window, the viewport should be adjusted as well
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);  

  //---------------------------------SHADER STUFF------------------------------------------------

  /*
  * A vector in GLSL (OpenGL Shading Language) has size from 1 to 4 hence, vec1...vec4
  * and each of its values can be retrieved by vec.x, vec.y, vex.z, vec.w
  * w in vec.w is perspective division
  */

  const char *vertexShaderSource = R"(

    #version 460 core
    layout (location = 0) in vec3 aPos;

    void main(){
      gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
    }

  )";

  // Took in x, y and z coords in a vec3 type data aPos using the "in" keyword 
  // and output gl_Position which is a vec4 type data i.e. 4 data
  // in order to make it work, we put the 4th arg to 1.0 i.e. the alpha
  // Note: gl_Position is a reserved keyword which is automatically returned

  GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
  glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
  glCompileShader(vertexShader);
  // glShaderSource : first param -> the shader object to compile to
  // second param -> number of strings, 1 because char
  // third param -> the actual source code of the shader

  // Checking for errors while compiling the shader
  checkForCompilationError(vertexShader, SHADER);

  /*
  FRAGMENT SHADER
  it only requires one output variable of type vec4 that defines the final color output
  we can declare the output values with the "out" keyword
  */

  const char *fragmentShaderSource = R"(

    #version 460 core
    out vec4 FragColor;

    void main(){
      FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
    }

  )";

  GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
  glCompileShader(fragmentShader);

  // Checking for errors while compiling the shader
  checkForCompilationError(fragmentShader, SHADER);

  // SHADER PROGRAM = vert + frag
  // link both the shaders to a program in order to make them work through activation the program

  GLuint shaderProgram = glCreateProgram(); // creates a program & returns the ID reference to the object
  glAttachShader(shaderProgram, vertexShader);
  glAttachShader(shaderProgram, fragmentShader);
  glLinkProgram(shaderProgram);
  // Attached the shaders to the program and linked them via glLinkProgram
  // because we need the output of the first as input to the second
  // we can use the program object by calling glUseProgram(shaderProgram)
  // Since we have linked the shaders to the program, we can delete them
  // because we no longer need them
  
  glDeleteShader(vertexShader);
  glDeleteShader(fragmentShader);

  // Now checking for any errors
  checkForCompilationError(shaderProgram, PROGRAM);

  // We have sent the input vertex data to the GPU and instructed the GPU how it should
  // process the data withing a vertex and fragment shader.
  // However, OpenGL does not yet know how it should interpret the vertex data in memory 
  // and how it should connect the vertex data to the vertex shader's attributes
  
  //---------------------------------LINKING VERTEX ATTRIBUTES-------------------------------------

  // Our vertex buffer data is stored as a 32bit ( 4 byte ) floating point values

  // Already written below
  // glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
  /*
  * the 1st param defines which vertex attribute we want to config
  * remember, we specified the location of the position vertex attribute through 
  * layout (location = 0) in the vertex shader source code, so we pass 0 as first param
  *
  * next we set the size of the vertex attribute. remember, it was a vec3 type data, so 3
  *
  * next, we set the type of the data which is GL_FLOAT ( note that a vec* in glsl is float )
  *
  * next, we specify if we want the values to be normalized
  * i.e., if we pass int and we have set this to true, the ints are normalized to 0 and 1 
  * or -1 and 1 (for signed int) when converted to float.
  * but not necessary here
  *
  * next is the stride which tells us the distance at which the next set of vertex attributes are
  * here the vertices are starting at 0, 12, 24
  * we can also specify it to be zero so that OpenGl automatically determines that 
  * (only works for tightly packed values i.e. no gap between vertex attributes)
  *
  * lastly, is the offset of where the position data begins in the buffer
  * (void*)0 is a typecast expression that converts the integer literal 0 to a void* pointer type. 
  * The purpose of this typecast is to explicitly indicate that the 
  * value 0 is being treated as a null pointer of type void*
  */

  // Already written below
  // glEnableVertexAttribArray(0);
  // vertex attribs are disabled by default, so we have to manually enable them
  // by passing the location of vertex attribute i.e. 0 in our case
  
  // at this point we can set our graphics using these commands in every iteration
    // // 0. copy our vertices array in a buffer for OpenGL to use
    // glBindBuffer(GL_ARRAY_BUFFER, VBO);
    // glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    // // 1. then set the vertex attributes pointers
    // glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    // glEnableVertexAttribArray(0);  
    // // 2. use our shader program when we want to render an object
    // glUseProgram(shaderProgram);
    // // 3. now draw the object 
    // someOpenGLFunctionThatDrawsOurTriangle();
  // but setting this for every object that might have many vertices becomes a cumbersome process
  // so we use VAO : Vertex Array Object

  //---------------------------------VERTEX ARRAY OBJECT (VAO)-------------------------------------------

  // vertex input
  GLfloat vertices[] = {
     0.5f, 0.5f, 0.0f,
     0.5f,-0.5f, 0.0f,
    -0.5f, 0.5f, 0.0f,
    -0.5f,-0.5f, 0.0f
  };

  // For EBO
  GLuint indices[] = {
    0, 1, 2, // top right
    1, 2, 3  // bottom left
  };

  GLuint VBO, VAO, EBO;

  glGenVertexArrays(1, &VAO);
  glGenBuffers(1, &VBO);
  glGenBuffers(1, &EBO);

  glBindVertexArray(VAO); // bind the VAO first, then bind and set VBOs and config it

  glBindBuffer(GL_ARRAY_BUFFER, VBO);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
  /* 
  4th param defines how we want the gpu to manage the given data
        GL_STREAM_DRAW
        GL_STATIC_DRAW
        GL_DYNAMIC_DRAW

  VAO can be bound just like a VBO and any subsequent vertex attrib calls from that point on 
  will be stored in the VAO. When configuring vertex attrib pointers, we only have to make those
  calls once and whenever we want to draw the object, can just bind the corresponding VAO.
  This makes switching between different vertex data and attribute configurations as easy as 
  binding a different VAO.
  And also, core openGL requires us to use VAO so it knows what to do with our vertex inputs
  */

  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
  glEnableVertexAttribArray(0); // 0 is the starting index of the VAO here

  // unbinding VBO
  glBindBuffer(GL_ARRAY_BUFFER, 0); 
  // note that this is allowed, the call to glVertexAttribPointer registered VBO as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
  
  // remember: do NOT unbind the EBO while a VAO is active as the bound element buffer object IS stored in the VAO; keep the EBO bound.
  //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

  // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
  // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
  glBindVertexArray(0);

  // (1) Bind the vertex array object to the current buffer
  // (2) Copy our vertice arrays in buffer for OpenGL to use
  // (3) Copy index array in a element buffer
  // (4) Set our vertex attrib pointer

  // now inside the game loop to draw the object :
    // glUseProgram(shaderProgram);
    // glBindVertexArray(VAO);
    // someOpenGLFunctionThatDrawsOurTriangle();
  
  // By default it is set to GL_FILL
  // Configures how OpenGL draws its primitives
  glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

  //---------------------------------MAIN / RENDER LOOP--------------------------------------------

  // An iteration of the render loop is more commonly called a frame. 
  while(!glfwWindowShouldClose(window)){
    processInput(window); // input

    glClearColor(0.07f, 0.13f, 0.17f, 1.0f); // state setting function
    glClear(GL_COLOR_BUFFER_BIT); // state using function

    // Main STUFF
    glUseProgram(shaderProgram);
    glBindVertexArray(VAO);

    // glDrawArrays(GL_TRIANGLES, 0, 3);
    // first arg : OpenGL primitive type i.e. triangles in this case
    // second arg : starting index of the vertex array
    // third arg : number of vertices to draw

    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
    // Now instead of using glDrawArrays to draw a single triangle with the given vertices
    // We use glDrawElements to draw multiple triangles with the given vertices AND indices
    // first arg : drawing mode / primitive
    // second arg : number of elements we would like to draw i.e. 6 indices here for a rectangle using two triangles
    // third arg : type of indices
    // fourth arg : specify offset in the EBO OR pass index array when not using EBO

    // Unbind the VAO cus why not
    glBindVertexArray(0);

    glfwPollEvents(); // checks and calls events (like resize and move)
    glfwSwapBuffers(window); // swap buffers
  }
// ---------------------------------END PART------------------------------------------------------------
  /* 
  The glfwWindowShouldClose func checks at the start of each loop if GLFW
  has been instructed to close. Returns true if so and render loop stops
  
  glfwPollEvents func checks if any events are triggered (like input),
  updates the window state and calls the corresponding functions
  
  glfwSwapBuffers will swap the color buffer that is used to render to during
  this render iteration and show it as output to the screen
  */

  // de-allocate all resources once they've outlived their purpose:
  // ------------------------------------------------------------------------
  glDeleteVertexArrays(1, &VAO);
  glDeleteBuffers(1, &VBO);
  glDeleteBuffers(1, &EBO);
  glDeleteProgram(shaderProgram);

  glfwTerminate();
  return 0;
}
