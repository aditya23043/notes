#include <iostream>
#include <vector>

struct ListNode {
  int val;
  ListNode *next;
  ListNode() : val(0), next(nullptr) {}
  ListNode(int x) : val(x), next(nullptr) {}
  ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
  void addTwoNumbers(ListNode *l1, ListNode *l2) {
    std::cout << l1->next->val << std::endl;
    int count1 = 0;
    int count2 = 0;
    /*while (l1->next->val != NULL) {*/
    /*  count1++;*/
    /*  l1 = l1->next;*/
    /*}*/
    /*while (l2->next->val != NULL) {*/
    /*  count2++;*/
    /*  l2 = l2->next;*/
    /*}*/
    std::cout << count1 << std::endl;
    std::cout << count2 << std::endl;
  }
};

void clean(ListNode *l1, ListNode *l2) {
  while (l1 != nullptr) {
    delete l1;
    l1 = l1->next;
  }
  while (l2 != nullptr) {
    l2 = l2->next;
    delete l2;
  }
}

int main() {

  ListNode *l1 =
      new ListNode(2, new ListNode(4, new ListNode(3, new ListNode())));
  /*l1->next->next->val = 3;*/

  ListNode *l2 = new ListNode(5);
  /*l2->next->val = 6;*/
  /*l2->next->next->val = 4;*/

  Solution something;
  something.addTwoNumbers(l1, l2);

  clean(l1, l2);

  return 0;
}
