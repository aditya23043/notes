#include <iostream>

class node {
  public:
    int data;
    node* left;
    node* right;

    node(int data) {
      this->data = data;
      left = nullptr;
      right = nullptr;
    }
};

class BST {
  private:
    node* root;

    node* insertnode(node* root, int data) {
      if (root == nullptr) {
        return new node(data);
      }
      if (data < root->data) {
        root->left = insertnode(root->left, data);
      }
      else if (data > root->data) {
        root->right = insertnode(root->right, data);
      }
      return root;
    }

    node* findMinnode(node* root) {
      while (root->left != nullptr) {
        root = root->left;
      }
      return root;
    }

    node* deletenode(node* root, int data) {
      if (root == nullptr) {
        return root;
      }
      if (data < root->data) {
        root->left = deletenode(root->left, data);
      }
      else if (data > root->data) {
        root->right = deletenode(root->right, data);
      }
      else {
        if (root->left == nullptr) {
          node* temp = root->right;
          delete root;
          return temp;
        }
        else if (root->right == nullptr) {
          node* temp = root->left;
          delete root;
          return temp;
        }
        node* temp = findMinnode(root->right);
        root->data = temp->data;
        root->right = deletenode(root->right, temp->data);
      }
      return root;
    }

    void inorderTraversal(node* root) {
      if (root != nullptr) {
        inorderTraversal(root->left);
        std::cout << root->data << " ";
        inorderTraversal(root->right);
      }
    }

    void preorderTraversal(node* root) {
      if (root != nullptr) {
        std::cout << root->data << " ";
        preorderTraversal(root->left);
        preorderTraversal(root->right);
      }
    }

    void postorderTraversal(node* root) {
      if (root != nullptr) {
        postorderTraversal(root->left);
        postorderTraversal(root->right);
        std::cout << root->data << " ";
      }
    }

    int calculateHeight(node* root) {
      if (root == nullptr) {
        return -1;
      }
      int leftHeight = calculateHeight(root->left);
      int rightHeight = calculateHeight(root->right);
      return std::max(leftHeight, rightHeight) + 1;
    }

    int countnodes(node* root) {
      if (root == nullptr) {
        return 0;
      }
      return 1 + countnodes(root->left) + countnodes(root->right);
    }

    void deleteNode(node* root) {
      if (root == nullptr) {
        return;
      }
      deleteNode(root->left);
      deleteNode(root->right);
      delete root;
    }

  public:
    BST() {
      root = nullptr;
    }

    void insert(int data) {
      root = insertnode(root, data);
    }

    void remove(int data) {
      root = deletenode(root, data);
    }

    void inorder() {
      inorderTraversal(root);
      std::cout << std::endl;
    }

    void preorder() {
      preorderTraversal(root);
      std::cout << std::endl;
    }

    void postorder() {
      postorderTraversal(root);
      std::cout << std::endl;
    }

    int height() {
      return calculateHeight(root);
    }

    int nodeCount() {
      return countnodes(root);
    }

    ~BST() {
      deleteNode(root);
    }
};

int main() {
  BST bst;

  bst.insert(50);
  bst.insert(30);
  bst.insert(20);
  bst.insert(40);
  bst.insert(80);
  bst.insert(45);
  bst.insert(35);

  bst.inorder();
  bst.preorder();
  bst.postorder();
  std::cout << bst.height() << std::endl;
  std::cout << bst.nodeCount() << std::endl;
  bst.remove(30);
  bst.inorder();

  return 0;
}
