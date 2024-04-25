#include <iostream>

struct Node {
  int vertex;
  Node *next;
};

// Directed
class Graph {

public:
  int size;
  Node **adjList;
  int **adjMatrix;

  Graph(int numVertices) {
    this->size = numVertices;
    adjList = new Node *[this->size];
    for (int i = 0; i < this->size; i++) {
      adjList[i] = nullptr;
    }
    adjMatrix = new int *[this->size];
    for( int i = 0; i < this->size; i++ ){
      adjMatrix[i] = new int[this->size];
      for( int j = 0; j < this->size; j++ ){
        adjMatrix[i][j] = 0;
      }
    }
  }

  void addEdge(int src, int dest) {

    if (src > this->size - 1) {
      std::cout << "Error! Out of Index" << std::endl;
      std::exit(EXIT_FAILURE);
    }

    Node *newNode = new Node;
    newNode->vertex = dest;
    newNode->next = nullptr;

    if (adjList[src] == nullptr) {
      adjList[src] = newNode;
    } else {
      Node *temp = adjList[src];
      while (temp->next != nullptr) {
        temp = temp->next;
      }
      temp->next = newNode;
    }
    adjMatrix[src][dest] = 1;
  }

  void deleteEdge(int src, int dest){

    if (src > this->size - 1) {
      std::cout << "Error! Out of Index" << std::endl;
      std::exit(EXIT_FAILURE);
    }

    adjMatrix[src][dest] = 0;
  }
  
  void print() {
    std::cout << std::endl << "List:" << std::endl;
    for (int i = 0; i < this->size; i++) {
      std::cout << i << " -> ";
      Node *temp = adjList[i];
      while (temp != nullptr) {
        std::cout << temp->vertex << " ";
        temp = temp->next;
      }
      std::cout << std::endl;
    }
    std::cout << std::endl << "Matrix:" << std::endl;
    for( int i = 0; i < this->size; i++ ){
      for( int j = 0; j < this->size; j++ ){
        std::cout << adjMatrix[i][j] << " ";
      }
      std::cout << std::endl;
    }
  }

  ~Graph() {
    for (int i = 0; i < this->size; i++) {
      delete[] adjMatrix[i];
      Node *temp = adjList[i];
      while (temp != nullptr) {
        Node *prev = temp;
        temp = temp->next;
        delete prev;
      }
    }
    delete[] adjList;
    delete[] adjMatrix;
  }
};

// NOTE: 
// Adjacency Matrix is an array inside and array (2d Array)
// Adjacency List is a Node inside an array

int main() {

  Graph graph(4);
  graph.addEdge(3, 2);
  graph.addEdge(3, 3);
  graph.addEdge(0, 3);
  graph.print();

  return 0;
}
