public class q1 {

  public static class Person {
    String name;
    int age;

    Person(String name, int age){
      this.name = name;
      this.age = age;
    }

    public void print(){
      System.out.println("Name: " + this.name);
      System.out.println("Age: " + this.age);
    }

  }

  public static void main(String[] args){
  
    Person p1 = new Person("Aditya", 19);
    p1.print();

  }
}
