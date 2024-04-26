#include <iostream>

struct Node{
  int data;
  Node *left;
  Node *right;
};

class BST{

public:

  Node *root;

  BST(int value){
    root = new Node;
    root->data = value;
    root->right = nullptr;
    root->left = nullptr;
  }

  void insert(int num){
    Node *temp;
    temp = new Node;
    temp->data = num;
    temp->left = nullptr;
    temp->right = nullptr;

    Node *cur = root;
    Node *prev;

    while( cur != nullptr ){
      if( cur->data > num ){
        prev = cur;
        cur = cur->left;
      }
      else if( cur->data < num ){
        prev = cur;
        cur = cur->right;
      }
    }
    if ( prev->data > num ){
      prev->left = temp;
    }
    else if ( prev->data < num ){
      prev->right = temp;
    }
  }
};

int main(){

  BST tree(5);
  tree.insert(2);
  tree.insert(6);

  std::cout << tree.root->left->data << std::endl;

  return 0;
}
