#include <iostream>

int main() {

  int size;
  std::cout << "Enter number of elements in the array: ";
  std::cin >> size;

  if (size > 1000000 or size < 1) {
    std::exit(EXIT_FAILURE);
  }

  int arr[size];
  std::cout << "Enter array: ";
  for (int i = 0; i < size; i++) {
    std::cin >> arr[i];
  }

  int r;
  std::cout << "Enter the value of r: ";
  std::cin >> r;

  if (r > 1000000 or r < 1) {
    std::exit(EXIT_FAILURE);
  }

  std::string output;
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      if (arr[i] % arr[j] == r) {
        output = output + "(" + std::to_string(arr[i]) + "," +
                 std::to_string(arr[j]) + "), ";
      }
    }
  }

  if( output.size() != 0 ){
    std::cout << "Output: ";
    for (int i = 0; i < output.size() - 2; i++) {
      std::cout << output[i];
    }
    std::cout << std::endl;
  }

  return 0;
}
