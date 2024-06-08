#include <cstdlib>
#include <iostream>
#include <vector>

class Solution {
public:
  int scoreOfString(std::string s) {
    int count = 0;
    int soln = 0;
    for (char a : s) {
      count++;
    }
    for (int i = 0; i < count - 1; i++) {
      int j = i + 1;
      soln += (abs((int)s.at(i) - (int)s.at(j)));
    }
    return soln;
  }
};

int main() {
  Solution something;
  std::cout << something.scoreOfString("zaz") << std::endl;
  return 0;
}
