#include <iostream>

class MinHeap {
  public:
    int* heap;
    int capacity;
    int size;

    MinHeap(int capacity) : capacity(capacity), size(0) {
      heap = new int[capacity];
    }

    void insert(int value) {
      if (size == capacity) {
        std::cout << "Heap is full!" << std::endl;
        exit(EXIT_FAILURE);
      }

      heap[size] = value;
      heapifyUp(size);
      size++;
    }

    int remove() {
      if (size == 0) {
        std::cout << "Heap is empty!" << std::endl;
        exit(EXIT_FAILURE);
      }

      int root = heap[0];
      heap[0] = heap[size - 1];
      size--;
      heapify(heap, size, 0);

      return root;
    }

    void heapifyUp(int index) {
      int parentIndex = (index - 1) / 2;

      while (index > 0 && heap[parentIndex] > heap[index]) {
        std::swap(heap[parentIndex], heap[index]);
        index = parentIndex;
        parentIndex = (index - 1) / 2;
      }
    }

    void heapify(int* heap, int size, int index) {
      int smallest = index;
      int leftChildIndex = 2 * index + 1;
      int rightChildIndex = 2 * index + 2;

      if (leftChildIndex < size && heap[leftChildIndex] < heap[smallest]) {
        smallest = leftChildIndex;
      }

      if (rightChildIndex < size && heap[rightChildIndex] < heap[smallest]) {
        smallest = rightChildIndex;
      }

      if (smallest != index) {
        std::swap(heap[index], heap[smallest]);
        heapify(heap, size, smallest);
      }
    }

    int extractMin(int* heap, int& size) {
      if (size == 0) {
        std::cout << "Heap is empty!" << std::endl;
        exit(EXIT_FAILURE);
      }

      int minElement = heap[0];
      heap[0] = heap[size - 1];
      size--;
      heapify(heap, size, 0);

      return minElement;
    }

    void heapSort(int* arr, int size) {
      for (int i = size / 2 - 1; i >= 0; i--) {
        heapify(arr, size, i);
      }

      for (int i = size - 1; i > 0; i--) {
        std::swap(arr[0], arr[i]);
        heapify(arr, i, 0);
      }
    }

    ~MinHeap() {
      delete[] heap;
    }
};

int main() {
  int capacity = 10;

  // Empty Heap
  MinHeap minHeap(capacity);

  // Insertion
  minHeap.insert(5);
  minHeap.insert(3);
  minHeap.insert(8);
  minHeap.insert(1);
  minHeap.insert(10);

  // Deletion
  int root = minHeap.remove();
  std::cout << root << std::endl;

  // Extract Min
  std::cout << minHeap.extractMin(minHeap.heap, minHeap.size) << std::endl;

  // Heap sort
  int arr[] = {9, 4, 7, 2, 1, 5, 8, 3, 6};
  int size = sizeof(arr) / sizeof(arr[0]);

  minHeap.heapSort(arr, size);

  for (int i = 0; i < size; i++) {
    std::cout << arr[i] << " ";
  }
  std::cout << std::endl;

  return 0;
}
