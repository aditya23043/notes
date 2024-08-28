public class q2 {

  public static class Rectangle {
    int width;
    int height;

    Rectangle(int width, int height){
      this.width = width;
      this.height = height;
    }

    public int perimeter(){
      return 2 * (this.width + this.height);
    }

    public int area(){
      return (this.width * this.height);
    }

  }

  public static void main(String[] args) {
    Rectangle r = new Rectangle(5, 4);
    System.out.println(r.perimeter());
    System.out.println(r.area());
  }

}
