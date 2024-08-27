#include <cmath>
#include <iomanip>
#include <iostream>
#include <vector>

class Solution {
public:
  std::string multiply(std::string num1, std::string num2) {
    long double n1 = 0;
    long double n2 = 0;
    for (int i = 0; i < num1.length(); i++) {
      n1 += (pow(10, num1.length() - i - 1) * ((int)num1.at(i) - 48));
    }
    for (int i = 0; i < num2.length(); i++) {
      n2 += (pow(10, num2.length() - i - 1) * ((int)num2.at(i) - 48));
    }
    std::string temp = std::to_string(n1 * n2);
    std::string soln;

    for (char a : temp) {
      if (a != '.') {
        soln += a;
      } else {
        break;
      }
    }

    return soln;
  }
};

int main() {
  Solution something;
  std::cout << something.multiply("498828660196", "840477629533") << std::endl;
  return 0;
}
