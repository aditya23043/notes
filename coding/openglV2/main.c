#include "libs/glad.h"
#include <GLFW/glfw3.h>
#include <stdbool.h>
#include <GL/gl.h>

const int unsigned _WIDTH = 800;
const int unsigned _HEIGHT = 600;

void framebuffer_size_callback(GLFWwindow *window, int width, int height);
void process_input(GLFWwindow *window);

int main(int argc, char *argv[]) {

  // init glfw
  glfwInit();
  // OpenGL version: 4.6
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
  // Core (modern) vs immediate (deprecated) profile
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow *window = glfwCreateWindow(_WIDTH, _HEIGHT, "Doom but better!", NULL, NULL);
  glfwMakeContextCurrent(window);

  // Loading glad
  gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

  // setting the viewport for rendering
  glViewport(0, 0, _WIDTH, _HEIGHT);
  //  change viewport on resize
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

  // main loop
  while(!glfwWindowShouldClose(window)){

    // input hadnling
    process_input(window);

    // Rendering
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    // event handling and buffer swap
    glfwSwapBuffers(window);
    glfwPollEvents();

  }

  // quit
  glfwTerminate();

  return 0;
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height){
  glViewport(0, 0, width, height);
}

void process_input(GLFWwindow *window){
  if(glfwGetKey(window, GLFW_KEY_Q) == GLFW_PRESS){
    glfwSetWindowShouldClose(window, true);
  }
}
