#include <iostream>
#include <vector>

bool check(std::vector<int> bar) {
  for (auto a : bar) {
    if (a != 0) {
      return false;
    }
  }
  return true;
}

int main() {

  std::vector<int> something = {7, 4, 4, 3, 2};
  int n = 5;

  std::vector<int> foo(n, 0);

  int count = 0;

  while (!check(something)) {
    for (int i = 0; i < something.size(); i++) {
      if (i == something.size() - 1) {
        if (something.at(something.size() - 1) > 0) {
          something[something.size() - 1] -= 1;
        }
      } else {
        if (something.at(i) > something.at(i + 1) and something.at(i) > 0) {
          something[i] -= 1;
        }
      }
    }
    count++;
  }

  std::cout << count << std::endl;

  return 0;
}
