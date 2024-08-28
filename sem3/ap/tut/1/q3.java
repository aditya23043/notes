public class q3 {

  public static class Student {
    String name;
    char grade;
    String[] courses = new String[1];
    int courses_num;

    Student(String name, char grade, String course) {
      this.name = name;
      this.grade = grade;
      this.courses[0] = course;
      this.courses_num = 1;
    }

    void add(String course){
      String[] temp = new String[courses_num];
      for (int i = 0; i < temp.length; i++) {
        temp[i] = courses[i];
      }
      courses = new String[courses_num + 1];
      for (int i = 0; i < temp.length; i++) {
        courses[i] = temp[i];
      }
      courses[courses_num] = course;
      courses_num++;
    }
    
    void delete(String course){
      int index_to_remove = -1;
      for (int i = 0; i < courses.length; i++) {
        if(courses[i] == course){
          index_to_remove = i;
          break;
        }
      }
      if(index_to_remove == -1){
        System.out.println("Course To Be Removed Not Found!");
        System.exit(1);
      } else {
        String[] temp = new String[courses_num-1];
        int j = 0;
        for (int i = 0; i < courses.length; i++) {
          if(i == index_to_remove){
            ;
          } else {
            temp[j] = courses[i];
            j++;
          }
        }
        courses = new String[courses_num-1];
        for (int i = 0; i < temp.length; i++) {
          courses[i] = temp[i];
        }
        courses_num --;
      }
    }

    void print(){
      System.out.println("Name: " + this.name);
      System.out.println("Grade: " + this.grade);
      System.out.println("Courses: ");
      for (int i = 0; i < courses.length; i++) {
        System.out.println("  " + courses[i]); 
      }
    }

  }

  public static void main(String[] args) {

    Student foo = new Student("Someone", 'A', "CTD");
    foo.print();
    foo.add("AP");
    foo.add("ELD");
    foo.add("M3");
    foo.delete("CTD");
    foo.print();

  }
}
