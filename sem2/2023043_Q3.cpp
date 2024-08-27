/*
 * NOTE:
 * 1. Can't have same parent
 * 2. Same Level
 */

#include <cmath>
#include <iostream>

// Storing data in form of a struct
struct Input {
  int value;
  int index;
  int level;
};

Input find(Input *arr, int size, int element) {
  for (int i = 0; i < size; i++) {
    if (arr[i].value == element) {
      return arr[i];
    }
  }
  return Input{-1, 0, 0};
}

int main() {

  int size;
  std::cout << "Enter the number of elements in the BST: ";
  std::cin >> size;

  Input arr[size];

  std::string data;
  std::cout << "Input: ";

  // NOTE:
  // We are storing i + 1 as index because we want to use the property of BST
  // which finds out the current node's parents and children using index. And
  // also, we found out the level of each element by using log2 function from
  // cmath lib which finds out the value of log x base 2.

  for (int i = 0; i < size; i++) {
    std::cin >> data;
    if (data == "N") {
      arr[i] = Input{-1, i + 1, (int)log2(i + 1)};
    } else {
      arr[i] = Input{stoi(data), i + 1, (int)log2(i + 1)};
    }
  }

  // INPUT
  int q1, q2;

  std::cout << "Query 1: ";
  std::cin >> q1;

  std::cout << "Query 2: ";
  std::cin >> q2;

  // Checking level and parent
  if (find(arr, size, q1).level == find(arr, size, q2).level) {
    if (find(arr, size, q1).index / 2 != find(arr, size, q2).index / 2) {
      std::cout << "Yes" << std::endl;
      return 0;
    }
  }
  std::cout << "No" << std::endl;

  return 0;
}
