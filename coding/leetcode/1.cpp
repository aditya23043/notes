#include <iostream>
#include <vector>

class Solution {
public:
  std::vector<int> twoSum(std::vector<int> &nums, int target) {
    for (int i = 0; i < nums.size(); i++) {
      for (int j = i + 1; j < nums.size(); j++) {
        if (nums[i] + nums[j] == target) {
          return std::vector<int>{i, j};
        }
      }
    }
    return std::vector<int>{-1};
  }
};

int main() {
  Solution something;
  std::vector<int> foo = {2, 7, 11, 15};
  std::vector<int> somethingelse = something.twoSum(foo, 9);
  for (auto e : somethingelse) {
    std::cout << e << std::endl;
  }
  return 0;
}
