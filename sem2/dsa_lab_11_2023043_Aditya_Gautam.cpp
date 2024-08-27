#include <iostream>

struct Data {
  int key;
  int index;
};

class Hashtable {
  public:
    int size;
    Data *table;

    Hashtable(int size) {
      this->size = size;
      table = new Data[size];
      for ( int i = 0; i < size; i++ ){
        table[i] = Data{0,i};
      }
    }

    int hashFunction(int key) {
      return key % size;
    }

    void insert(int key) {
      int index = hashFunction(key);
      if (this->table[index].key == 0){
        this->table[index] = Data{key,index};
      }
      else{
        while (this->table[index].key != 0 && index < this->size){
          index++;
        }
        this->table[index] = Data{key,index};
      }
    }

    void remove(int key) {
      this->table[search(key)] = Data{0, search(key)};
    }

    int search(int key){
      int index = hashFunction(key);
      if ( this->table[index].key == key ){
        return index;
      }
      else{
        while( this->table[index].key != key && index < this->size ){
          index++;
        }
        if ( this->table[index].key == key ){
          return index;
        }
        else{
          return -1;
        }
      }
    }

    void print(){
      for ( int i = 0; i < size; i++ ){
        std::cout << this->table[i].key << std::endl;
      }
    }

    int linear_probing(int value){
      int index = value % this->size;
      while ( this->table[index].key != 0 ){
        index++;
      }
      return index;
    }

    int quadratic_probing(int value){
      int index = value % this->size;
      int collision_count = 0;
      while ( this->table[index].key != 0 ){
        collision_count++;
        index += collision_count*collision_count;
      }
      return index;
    }
  
  ~Hashtable(){
    delete[] this->table;
  }
};

int main(){

  Hashtable hash(5);
  hash.insert(10);
  hash.insert(1);
  hash.insert(5);
  hash.insert(15);
  hash.insert(12);
  hash.remove(5);
  hash.print();

  // std::cout << hash.quadratic_probing(1) << std::endl;

  return 0;
}
