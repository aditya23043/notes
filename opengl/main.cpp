#include <cmath>
#include <iostream>
#include <glad/glad.c>
#include <GLFW/glfw3.h>
#include "shader.h"

// ---------------------------------FUNCTIONS-------------------------------------

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

  //---------------------------------VERTEX ARRAY OBJECT (VAO)-------------------------------------------

  Shader myShader("shader.vert", "shader.frag");

  // vertex input
  GLfloat vertices[] = {
     0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f,
     0.5f,-0.5f, 0.0f, 0.0f, 1.0f, 0.0f,
    -0.5f, 0.5f, 0.0f, 0.0f, 0.0f, 1.0f,
    -0.5f,-0.5f, 0.0f, 1.0f, 1.0f, 1.0f,
  };

  // EBO
  GLuint indices[] = {
    0, 1, 2, // top right
    1, 2, 3  // bottom left
  };

  // Texture
  GLfloat textureCoords[] = {
    1.0f, 1.0f,
    1.0f,-1.0f,
    0.0f, 1.0f,
    0.0f,-1.0f
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

  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
  glEnableVertexAttribArray(0); // 0 is the starting index of the VBO here

  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3*sizeof(float)));
  glEnableVertexAttribArray(1); // 1 is the starting index of the VBO here

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

    myShader.use();

    GLfloat timeValue = glfwGetTime();
    GLfloat colValue = (std::sin(timeValue) / 2.0f) + 0.5f;
    myShader.setFloat4("ourColor", 0.0f, colValue, colValue, 1.0f);

    // glDrawArrays(GL_TRIANGLES, 0, 3);
    // first arg : OpenGL primitive type i.e. triangles in this case
    // second arg : starting index of the vertex array
    // third arg : number of vertices to draw

    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
    // Now instead of using glDrawArrays to draw a single triangle with the given vertices
    // We use glDrawElements to draw multiple triangles with the given vertices AND indices
    // first arg : drawing mode / primitive
    // second arg : number of elements we would like to draw i.e. 6 indices here for a rectangle using two triangles
    // third arg : type of indices
    // fourth arg : specify offset in the EBO OR pass index array when not using EBO

    glBindVertexArray(0);

    glfwPollEvents();
    glfwSwapBuffers(window);
  }

  glDeleteVertexArrays(1, &VAO);
  glDeleteBuffers(1, &VBO);
  glDeleteBuffers(1, &EBO);
  myShader.deleteProgram();

  glfwTerminate();
  return 0;
}
