#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

#define SHADER 0
#define PROGRAM 1

class Shader{
public:
  GLuint ID;

  Shader( const char *vertexPath, const char *fragmentPath ){
    std::string vertexCode, fragmentCode;
    std::ifstream vShaderFile, fShaderFile;
    vShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
    fShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);

    try{

      vShaderFile.open(vertexPath);
      fShaderFile.open(fragmentPath);

      std::stringstream vShaderStream, fShaderStream;

      vShaderStream << vShaderFile.rdbuf();
      fShaderStream << fShaderFile.rdbuf();

      vShaderFile.close();
      fShaderFile.close();

      vertexCode = vShaderStream.str();
      fragmentCode = fShaderStream.str();

    }
    catch(std::ifstream::failure &e){
      std::cout << "ERROR::SHADER::FILE_NOT_SUCCESSFULLY_READ: " << e.what() << std::endl;
    }

    GLuint vertex, fragment;
    const char *vShaderCode = vertexCode.c_str();
    const char *fShaderCode = fragmentCode.c_str();

    vertex = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertex, 1, &vShaderCode, NULL);
    glCompileShader(vertex);
    checkForCompilationError(vertex, SHADER);

    fragment = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragment, 1, &fShaderCode, NULL);
    glCompileShader(fragment);
    checkForCompilationError(fragment, SHADER);

    ID = glCreateProgram();
    glAttachShader(ID, vertex);
    glAttachShader(ID, fragment);
    glLinkProgram(ID);
    checkForCompilationError(ID, PROGRAM);

    glDeleteShader(vertex);
    glDeleteShader(fragment);

  }

  void use(){
    glUseProgram(ID);
  }

  void setBool( const std::string &name, bool value ){
    glUniform1i(glGetUniformLocation(ID, name.c_str()), (int)value);
  }

  void setFloat( const std::string &name, float value ){
    glUniform1f(glGetUniformLocation(ID, name.c_str()), value);
  }

  void setFloat4( const std::string &name, float v1, float v2, float v3, float v4 ){
    glUniform4f(glGetUniformLocation(ID, name.c_str()), v1, v2, v3, v4);
  }

  void setInt( const std::string &name, int value ){
    glUniform1i(glGetUniformLocation(ID, name.c_str()), value);
  }

  void deleteProgram(){
    glDeleteProgram(ID);
  }


private:

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
    
};
