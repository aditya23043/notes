#include <cstdlib>
#include <iostream>
#include <time.h>

enum Type {
  VALUE,
  INDEX,
};

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

  void remove(int element, Type type) {
    int index;
    int temp[this->size - 1];
    if (type == 0) {
      for (int i = 0; i < this->size; i++) {
        if (this->arr[i] == element) {
          index = i;
          break;
        }
      }
    } else if (type == 1) {
      index = element;
    }
    for (int i = 0; i < index; i++) {
      temp[i] = this->arr[i];
    }

    for (int i = index + 1; i < this->size; i++) {
      temp[i - 1] = this->arr[i];
    }
    size--;

    for (int i = 0; i < size; i++) {
      this->arr[i] = temp[i];
    }
  }

  int max() {
    int max = this->arr[0];
    for (int i = 0; i < this->size; i++) {
      if (this->arr[i] > max) {
        max = this->arr[i];
      }
    }
    return max;
  }

  int min() {
    int min = this->arr[0];
    for (int i = 0; i < this->size; i++) {
      if (this->arr[i] < min) {
        min = this->arr[i];
      }
    }
    return min;
  }

  int query1() {
    int num;
    if (rand() % 2 == 0) {
      num = min();
    } else {
      num = max();
    }
    // Removing that ID from the stack
    remove(num, VALUE);
    return num;
  }

  int query2() {
    int k;
    std::cout << "Enter k: ";
    std::cin >> k;
    if (k > size) {
      std::cout << k << "th smallest element does not exist in the list of IDs!" << std::endl;
      exit(EXIT_FAILURE);
    }
    int num = this->arr[k - 1];
    remove(k - 1, INDEX);
    return num;
  }

  int query3() {
    int median = (size + 1) / 2;
    int num = this->arr[median - 1];
    remove(median - 1, INDEX);
    return num;
  }

  int empty() {
    for (int i = 0; i < this->size; i++) {
      if (this->arr[i] != 0) {
        return 0;
      }
    }
    return 1;
  }

  ~Stack() { delete[] this->arr; }
};

void heapify(int *&arr, int N, int i) {
  int largest = i;
  int l = 2 * i + 1;
  int r = 2 * i + 2;

  if (l < N && arr[l] > arr[largest])
    largest = l;

  if (r < N && arr[r] > arr[largest])
    largest = r;

  if (largest != i) {
    std::swap(arr[i], arr[largest]);
    heapify(arr, N, largest);
  }
}

void heapSort(int *&arr, int N) {
  for (int i = N / 2 - 1; i >= 0; i--)
    heapify(arr, N, i);

  for (int i = N - 1; i > 0; i--) {
    std::swap(arr[0], arr[i]);
    heapify(arr, i, 0);
  }
}

int main() {

  srand(time(0));

  Stack stack;
  stack.push(34);
  stack.push(56);
  stack.push(12);
  stack.push(44);
  stack.push(10);

  heapSort(stack.arr, stack.size);
  int input;
  do {

    std::cout << "Input Query: ";
    std::cin >> input;

    if (stack.empty()) {
      std::cout << "No IDs Left!" << std::endl;
      std::exit(EXIT_SUCCESS);
    }

    switch (input) {
    case 1:
      std::cout << "Output: " << stack.query1() << std::endl;
      break;
    case 2:
      std::cout << "Output: " << stack.query2() << std::endl;
      break;
    case 3:
      std::cout << "Output: " << stack.query3() << std::endl;
      break;
    }
  } while (input == 1 or input == 2 or input == 3);

  std::cout << "Quiting..." << std::endl;

  return 0;
}
