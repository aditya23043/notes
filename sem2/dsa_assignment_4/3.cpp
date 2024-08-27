#include <cmath>
#include <iostream>
#include <vector>

void quit() {
  std::cout << "ERROR! Try Again!" << std::endl;
  std::exit(EXIT_FAILURE);
}

float distance(int x1, int y1, int x2, int y2) {
  return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

void generateCombinations(std::vector<int> &nums,
                          std::vector<std::vector<int>> &result,
                          std::vector<int> &combination, int index,
                          int length) {
  if (length == 0) {
    result.push_back(combination);
    return;
  }

  if (index >= nums.size()) {
    return;
  }

  combination.push_back(nums[index]);
  generateCombinations(nums, result, combination, index + 1, length - 1);
  combination.pop_back();
  generateCombinations(nums, result, combination, index + 1, length);
}

int main() {

  int size;
  std::cout << "Enter the number of points: ";
  std::cin >> size;

  int locations[size][size];

  if (size > 1000 or size < 1) {
    quit();
  }

  int xi;
  int yi;

  for (int i = 0; i < size; i++) {
    std::cout << "Enter Point No. " << i + 1 << ": ";
    std::cin >> xi;
    std::cin >> yi;
    if (xi < -1000000 or yi < -1000000 or xi > 1000000 or yi > 1000000) {
      quit();
    }
    locations[i][0] = xi;
    locations[i][1] = yi;
  }

  float output = 0;

  // for ( int i = 0; i < size; i++ ){
  //   for ( int j = i+1; j < size; j++ ){
  //     output += distance(locations[i][0], locations[i][1], locations[j][0],
  //     locations[j][1]);
  //   }
  // }

  // for( int i = 0; i < size-1; i++ ){
  //   int j = i+1;
  //   output += distance(locations[i][0], locations[i][1], locations[j][0],
  //   locations[j][1]);
  // }

  // std::cout << output << std::endl;

  std::vector<int> nums;
  for( int i = 0; i < size; i++ ){
    nums.push_back(i);
  }
  std::vector<std::vector<int>> result;
  std::vector<int> combination;

  generateCombinations(nums, result, combination, 0, size);

  for (const auto &comb : result) {
    for (int num : comb) {
      std::cout << num << " ";
    }
    std::cout << std::endl;
  }
}
