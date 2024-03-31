#include "VBO.h"

VBO::VBO(GLfloat *vertices, GLsizeiptr size){
  glGenBuffers(1, &ID);
}
