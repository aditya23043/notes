#include <iostream>
#include "libs/glad.c"
#include <GLFW/glfw3.h>

const int SHADER = 0;
const int PROGRAM = 0;

void checkForCompilationError(unsigned int shaderOrProgram, int type){

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

int main(){

  //------------------------------------BASIC CONFIG AND CREATING WINDOW---------------------------

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

  // However, the moment a user resizes the window the viewport should be adjusted as well
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);  

  //-----------------------------------SHADER STUFF------------------------------------------------

  // vertex input
  float vertices[] = {
    -0.5f, -0.5f, 0.0f,
    0.5f, -0.5f, 0.0f,
    0.0f, 0.5f, 0.0f
  };

  unsigned int VBO; // Vertex buffer object
  glGenBuffers(1, &VBO);
  glBindBuffer(GL_ARRAY_BUFFER, VBO);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
  /* 
  4th param defines how we want the gpu to manage the given data
        GL_STREAM_DRAW
        GL_STATIC_DRAW
        GL_DYNAMIC_DRAW

  A vector in GLSL (OpenGL Shading Language) has size from 1 to 4 hence, vec1...vec4
  and each of its values can be retrieved by vec.x, vec.y, vex.z, vec.w
  w in vec.w is perspective division
  */

  const char *vertexShaderSource = 
    "#version 460 core\n"
    "layout (location = 0) in vec3 aPos;\n"
    "void main(){\n"
    " gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
    "}\0";

  // Took in x, y and z coords in a vec3 type data aPos using the "in" keyword 
  // and output gl_Position which is a vec4 type data i.e. 4 data
  // in order to make it work, we put the 4th arg to 1.0 i.e. the alpha
  // Note: gl_Position is a reserved keyword which is automatically returned

  unsigned int vertexShader;
  vertexShader = glCreateShader(GL_VERTEX_SHADER);

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

  const char *fragmentShaderSource =
    "#version 460 core\n"
    "out vec4 FragColor;\n"
    "void main(){\n"
    " FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);\n"
    "}\0";

  unsigned int fragmentShader;
  fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);

  glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
  glCompileShader(fragmentShader);

  // Checking for errors while compiling the shader
  checkForCompilationError(fragmentShader, SHADER);

  // SHADER PROGRAM = vert + frag
  // link both the shaders to a program in order to make them work through activation the program

  unsigned int shaderProgram;
  shaderProgram = glCreateProgram(); // creates a program & returns the ID reference to the object
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

  /*
  VAO can be bound just like a VBO and any subsequent vertex attrib calls from that point on 
  will be stored in the VAO. When configuring vertex attrib pointers, we only have to make those
  calls once and whenever we want to draw the object, can just bind the corresponding VAO.
  This makes switching between different vertex data and attribute configurations as easy as 
  binding a different VAO.
  And also, core openGL requires us to use VAO so it knows what to do with our vertex inputs
  */

  unsigned int VAO;
  glGenVertexArrays(1, &VAO);

  // (1) Bind the vertex array object to the current buffer
  glBindVertexArray(VAO);
  // (2) Copy our vertice arrays in buffer for OpenGL to use
  glBindBuffer(GL_ARRAY_BUFFER, VBO);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
  // (3) Set our vertex attrib pointer
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
  glEnableVertexAttribArray(0);

  // now inside the game loop :
    // 4. draw the object
    // glUseProgram(shaderProgram);
    // glBindVertexArray(VAO);
    // someOpenGLFunctionThatDrawsOurTriangle();

  //--------------------------------ELEMENT BUFFER OBJECT (EBO)-----------------------------------


  //---------------------------------MAIN / RENDER LOOP--------------------------------------------

  // An iteration of the render loop is more commonly called a frame. 
  while(!glfwWindowShouldClose(window)){
    processInput(window); // input

    glClearColor(0.2f, 0.3f, 0.3f, 1.0f); // state setting function
    glClear(GL_COLOR_BUFFER_BIT); // state using function

    // Main STUFF
    glUseProgram(shaderProgram);
    glBindVertexArray(VAO);
    glDrawArrays(GL_TRIANGLES, 0, 3);

    // first arg : OpenGL primitive type i.e. triangles in this case
    // second arg : starting index of the vertex array
    // third arg : number of vertices to draw

    glfwPollEvents(); // checks and calls events (like resize and move)
    glfwSwapBuffers(window); // swap buffers
  }

  /* 
  The glfwWindowShouldClose func checks at the start of each loop if GLFW
  has been instructed to close. Returns true if so and render loop stops
  
  glfwPollEvents func checks if any events are triggered (like input),
  updates the window state and calls the corresponding functions
  
  glfwSwapBuffers will swap the color buffer that is used to render to during
  this render iteration and show it as output to the screen
  */

  glfwTerminate();
  return 0;
}
