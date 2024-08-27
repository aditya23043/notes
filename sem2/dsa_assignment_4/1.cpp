#include <iostream>
#include <vector>

struct Node{
  int vertex;
  Node *next;
}

void print(std::vector<int> vec) {
  for (int num : vec) {
    std::cout << num << " ";
  }
  std::cout << std::endl;
}

void print2d(std::vector<std::vector<int>> vec) {
  for (std::vector<int> row : vec) {
    for (int num : row) {
      std::cout << num << " ";
    }
    std::cout << std::endl;
  }
}

int main() {

  // // INPUT
  // int m;
  // int n;
  // std::cout << "Enter number of rows: ";
  // std::cin >> m;
  // std::cout << "Enter number of columns: ";
  // std::cin >> n;

  int m = 4;
  int n = 4;
  std::vector<std::vector<char>> arr;

  for (int i = 0; i < m; i++) {
    std::vector<int> row;
    std::cout << "Enter Row " << i + 1 << ": ";
    for (int j = 0; j < n; j++) {
      int value;
      std::cin >> value;
      row.push_back(value);
    }
    arr.push_back(row);
  }

  print2d(arr);

  return 0;
}
