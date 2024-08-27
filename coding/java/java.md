<style>
*{
font-family: "VictorMono NFM";
font-style: "Bold";
}
</style>

# Java Tutorial - Bro Code

## Printing

```java
public class main {
  public static void main(String[] args) {
    System.out.print("Hello World");
    System.out.print(" but without a newline character");
    System.out.print("\n");
    System.out.println("Hello World");
    System.out.println("with newline character");

  }
}
```

## Comments

```java
public class main{
    public static void main(String[] args){
        // Single line comment

        /*
         * Multi
         * Line
         * Comment!
         */
    }
}
```

## Variables

```java
public class Main {
  public static void main(String[] args) {

    // Declaration
    int x;

    // Assignment
    x = 12;

    // Combined
    int y = 14;

    // Concatenation
    System.out.println("Y value is: " + y);

    // Note: L in the end required for long data type
    long a = 12345678912345678L;

    // Byte: Range from -128 to 127
    byte b = -129;

    // "f" required at the end
    float c = 3.14f;
    // higher precision floating point numbers
    double d = 3.14159265359;

    boolean e = true;

    char grade = 'A';
    String name = "something else";
  }
}
```

## Reading Input
```java
import java.util.Scanner;

public class Main {
  public static void main(String[] args) {

    Scanner scanner = new Scanner(System.in);

    System.out.println("What is your name: ");
    String name = scanner.nextLine();

    // Note: we are using nextInt method of the scanner
    // to input an integer as compared to inputting
    // strings using nextLine
    System.out.println("What is your age: ");
    int age = scanner.nextInt();

    // One problem arises
    // When we use any read function of scanner class
    // after running a nextInt(), we have one "\n" remaining
    // because nextInt only reads int part of the input
    // to resolve that we could run the nextLine() once more
    // after the nextInt method to take out the extra \n

    scanner.nextLine();

    System.out.println("What is your fav food: ");
    String food = scanner.nextLine();

    System.out.println(name + " " + age + " " + food);
    scanner.close();
  }
}
```

## Operations
```java
public class Main {
  public static void main(String[] args) {
    int num = 10;
    num++;
    num--;
    num = num / 3;
    System.out.println(num);
    // By Default, java does integer division

    double something = 13;
    something = (double)something / 3;
    System.out.println(something);
  }
}
```

## GUI

```java
import javax.swing.JOptionPane;

public class Main {
  public static void main(String[] args) {
    String name = JOptionPane.showInputDialog("Enter your name");
    JOptionPane.showMessageDialog(null, "Hello " + name);

    // showInputDialog returns a string
    int age = Integer.parseInt(JOptionPane.showInputDialog("Enter your age"));
    JOptionPane.showMessageDialog(null, "You are " + age + " years old!");

    double height =
        Double.parseDouble(JOptionPane.showInputDialog("Enter your height"));
    JOptionPane.showMessageDialog(null, "You are " + height + " cms tall!");
  }
}
```

## Math

```java
import javax.swing.JOptionPane;

public class Main {
  public static void main(String[] args) {
    double x = 3.14;
    double y = -10;

    System.out.println(Math.max(x, y));
    System.out.println(Math.abs(y));
    System.out.println(Math.sqrt(x));
    System.out.println(Math.round(x));
    System.out.println(Math.ceil(x));
    System.out.println(Math.floor(x));

    double a;
    double b;
    double c;

    a = Double.parseDouble(
        JOptionPane.showInputDialog("Enter value of side (a)"));
    b = Double.parseDouble(
        JOptionPane.showInputDialog("Enter value of side (b)"));
    c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
    JOptionPane.showMessageDialog(null, "The length of the hypotenuse is " + c);
  }
}
```

## Random Numbers

```java
import java.util.Random;

public class Main {
  public static void main(String[] args) {

    // Pseudo Random Numbers
    Random random = new Random();
    // By default random value ranges between -2 bil to 2 bil
    // It can be changed by passing a number as arg to nextInt
    // This will produce values from 0 to 5 (both inclusive)
    int x = random.nextInt(6) + 1;
    System.out.println(x);

    // By default this gives values between 0 and 1
    double y = random.nextDouble();
    System.out.println(y);

    boolean z = random.nextBoolean();
    System.out.println(z);
  }
}
```

## If Else

```java
import javax.swing.JOptionPane;

public class Main {
  public static void main(String[] args) {
    int age = Integer.parseInt(JOptionPane.showInputDialog("Enter your age"));
    if (age >= 18) {
      JOptionPane.showMessageDialog(null, "Allowed!");
    } else if (age < 0) {
      JOptionPane.showMessageDialog(null, "BRUH!");
    } else {
      JOptionPane.showMessageDialog(null, "Not Allowed!");
    }
  }
}
```

## Switch Case

```java
import javax.swing.JOptionPane;

public class Main {
  public static void main(String[] args) {
    String month = JOptionPane.showInputDialog("Enter month");
    switch (month) {
    case "January":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "February":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "March":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "April":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "May":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "June":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "July":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "August":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "September":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "October":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "November":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    case "December":
      JOptionPane.showMessageDialog(null, "It is " + month + "!");
      break;
    default:
      JOptionPane.showMessageDialog(null, "Invalid Input!");
    }
  }
}
```


## Logical Operators

| Symbol | Operation |
|--------|-----------|
| &&     | AND       |
| \|\|   | OR        |
| !      | NOT       |

```java
import java.util.Scanner;
import javax.swing.JOptionPane;

public class Main {
  public static void main(String[] args) {

    Scanner scanner = new Scanner(System.in);
    System.out.println("Press q to quit!");
    String response = scanner.next();
    System.out.println(response);
    if (response.equals("q") || response.equals("Q")) {
      System.out.println("You Quit! LOSEEERRRR");
    }
    scanner.close();
  }
}
```

## While Loop
## For Loop
