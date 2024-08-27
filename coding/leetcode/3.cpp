#include <iostream>
#include <vector>

class Stack {

public:
  int size; // total number of elements in the stack
  int *arr; // actual array implementation

  Stack() {
    size = 0;
    arr = nullptr;
  }

  void push(int element) {
    int temp[this->size + 1];
    for (int i = 0; i < size; i++) {
      temp[i] = this->arr[i];
    }
    delete[] arr;
    arr = new int[size + 1];
    for (int i = 0; i < size; i++) {
      this->arr[i] = temp[i];
    }
    this->arr[size] = element;
    size++;
  }

  void print() {
    for (int i = 0; i < size; i++) {
      std::cout << this->arr[i] << " ";
    }
    std::cout << std::endl;
  }

  void pop() {
    int temp[this->size - 1];
    for (int i = 0; i < size - 1; i++) {
      temp[i] = this->arr[i];
    }
    delete[] arr;
    arr = new int[size - 1];
    for (int i = 0; i < size - 1; i++) {
      this->arr[i] = temp[i];
    }
    size--;
  }

  ~Stack() { delete[] this->arr; }
};

class Solution {
public:
  int lengthOfLongestSubstring(std::string s) {
    Stack stack;
    int count = 0;
    for (char a : s) {
      stack.push(a);
    }
  }
};

int main() {
  Solution something;
  something.lengthOfLongestSubstring("abcabcabb");
  return 0;
}
