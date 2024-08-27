#include <iostream>
#include <list>
#include <queue>
#include <stack>

class Graph {
public:

  int numVertices;
  std::list<int> *adjList;
  int **adjMatrix;

  Graph(int num) {
    numVertices = num;
    adjList = new std::list<int>[numVertices];
    adjMatrix = new int *[numVertices];
    for (int i = 0; i < numVertices; i++) {
      adjMatrix[i] = new int[numVertices];
      for (int j = 0; j < numVertices; j++) {
        adjMatrix[i][j] = 0;
      }
    }
  }

  void addEdge(int u, int v) {
    adjList[u].push_back(v);
    adjList[v].push_back(u);
    adjMatrix[u][v] = 1;
    adjMatrix[v][u] = 1;
  }

  void removeEdge(int u, int v) {
    adjList[u].remove(v);
    adjList[v].remove(u);
    adjMatrix[u][v] = 0;
    adjMatrix[v][u] = 0;
  }

  void dfs(int start) {
    bool *visited = new bool[numVertices];
    for (int i = 0; i < numVertices; i++) {
      visited[i] = false;
    }

    std::stack<int> stack;
    stack.push(start);

    while (!stack.empty()) {
      int vertex = stack.top();
      stack.pop();

      if (!visited[vertex]) {
        visited[vertex] = true;
        std::cout << vertex << " ";

        for (auto it = adjList[vertex].begin(); it != adjList[vertex].end();
             ++it) {
          if (!visited[*it]) {
            stack.push(*it);
          }
        }
      }
    }
    delete[] visited;
  }

  void bfs(int start) {
    bool *visited = new bool[numVertices];
    for (int i = 0; i < numVertices; i++) {
      visited[i] = false;
    }

    std::queue<int> queue;
    visited[start] = true;
    queue.push(start);

    while (!queue.empty()) {
      int vertex = queue.front();
      queue.pop();
      std::cout << vertex << " ";

      for (auto it = adjList[vertex].begin(); it != adjList[vertex].end();
           ++it) {
        if (!visited[*it]) {
          visited[*it] = true;
          queue.push(*it);
        }
      }
    }
    delete[] visited;
  }

  bool isConnected() {
    bool *visited = new bool[numVertices];
    for (int i = 0; i < numVertices; i++) {
      visited[i] = false;
    }

    std::queue<int> queue;
    visited[0] = true;
    queue.push(0);

    while (!queue.empty()) {
      int vertex = queue.front();
      queue.pop();

      for (auto it = adjList[vertex].begin(); it != adjList[vertex].end();
           ++it) {
        if (!visited[*it]) {
          visited[*it] = true;
          queue.push(*it);
        }
      }
    }

    for (int i = 0; i < numVertices; i++) {
      if (!visited[i]) {
        delete[] visited;
        return false;
      }
    }

    delete[] visited;
    return true;
  }

  bool isDirected() {
    for (int i = 0; i < numVertices; i++) {
      for (auto it = adjList[i].begin(); it != adjList[i].end(); ++it) {
        if (!adjList[*it].empty() && adjList[*it].front() != i) {
          return true;
        }
      }
    }
    return false;
  }

  bool hasCycles() {
    for (int i = 0; i < numVertices; i++) {
      if (adjMatrix[i][i] == 1) {
        return true;
      }
    }
    return false;
  }

  void topologicalSortUtil(int v, bool visited[], std::stack<int> &stack) {
    visited[v] = true;

    for (auto it = adjList[v].begin(); it != adjList[v].end(); ++it) {
      if (!visited[*it]) {
        topologicalSortUtil(*it, visited, stack);
      }
    }

    stack.push(v);
  }

  void topologicalSort() {
    bool *visited = new bool[numVertices];
    for (int i = 0; i < numVertices; i++) {
      visited[i] = false;
    }

    std::stack<int> stack;

    for (int i = 0; i < numVertices; i++) {
      if (!visited[i]) {
        topologicalSortUtil(i, visited, stack);
      }
    }

    while (!stack.empty()) {
      std::cout << stack.top() << " ";
      stack.pop();
    }

    delete[] visited;
  }

  void printMatrix(){
    for (int i = 0; i < numVertices; i++) {
      for (int j = 0; j < numVertices; j++) {
        std::cout << adjMatrix[i][j] << " ";
      }
      std::cout << std::endl;
    }
  }

};

int main() {
  int size = 6;
  Graph graph(size);

  graph.addEdge(0, 1);
  graph.addEdge(0, 4);
  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(4, 5);

  graph.printMatrix();
  std::cout << std::endl;

  graph.dfs(0);
  std::cout << std::endl;

  graph.bfs(0);
  std::cout << std::endl;

  std::cout << (graph.isConnected() ? "Yes" : "No") << std::endl;
  std::cout << (graph.isDirected() ? "Yes" : "No") << std::endl;
  std::cout << (graph.hasCycles() ? "Yes" : "No") << std::endl;

  graph.topologicalSort();

  return 0;
}
