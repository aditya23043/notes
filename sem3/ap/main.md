# CSE 201 : ADVANCED PROGRAMMING => Lecture 1 (12/08/2024)
## Eval
- Assignments : 20%
- Surprise Quizzes : 10%
- Mid sem : 25%
- End sem : 25%
- Project : 20%
- NOTE: must do 2 before mid sems and 2 before end sems even though there are 6 quizzes in total

## OOP FEATURES

### ENCAPSULATION
- Private and public methods withing classes / methods in order to prevent clients with less privilidge from accessing those functions
- Making data private in order to prevent people with inadequate privilidges to access that data
### METHOD OVERLOADING 
- Defining another function with same name with arguments with different data types in order to make it work with different data types
### INHERITANCE
- Child class copies all methods from inherited parent class
### ABSTRACTION
- Hiding unnecessary details that the users should not care about
### METHOD OVERRIDING
### POLYMORPHISM
- If there are two child classes 'B' and 'C' that inherit from one parent class 'A'
- Since 'A' had function X() defined in it, 'B' and 'C' also inherit it
- But then if we override those X() functions in both 'B' and 'C' and then call B.X() then JVM ensures that the new X() function inside 'B' is only called and not the parent X() function from 'A'

#:# BITWISE OPERATORS
- & : and
- | : or
- ^ : xor
- ~ : nor
- << : left shift
- >> : right shift

## STRING
- Immutable character array
```java
String greeting = "hello";
String s = greeting.substring(0,3);
```

# Lecture 2 (14/08/24)

## Main
- With the static keyword, we do not need to initalize the class object to access it's methods
    - Eg: System class initialization is not needed when we call System.out.println()
- With the public access modifier, we can access classes from outside the file

## Intro contd
- Instead of pointers, we have references

## Strings
### Substrings
```java
String something = "foo";
String another = something.substring(0,3);
```

## Constructor
- This is a function which is called when a class object is initialized
```java
System sys = new System();
sys.out.println("something");
```
- The `new` keyword makes JVM allocate memory for the reference which is used to hold the class attributes and methods

## String Builder
```java
String builder  = new StringBuilder();
builder.append(ch);
builder.append(str);
String longString  = builder.toString();
```

# Lecture 3 (19/08/24)

```java
class Employee {
    private String name;
    private double salary;
    private localDate hireDay;

    // Constructor
    public Employee(...){
        ...
    }
}
```

- Now we cannot call this :
```java
Employee e;
System.out.println(e.name);
```
- because name is a private attribute of the class


## Array of objects
```java
Employee[] staff = new Employee[3];
staff[0] = new Employee("bruh", ...);
staff[1] = new Employee("something", ...);
staff[2] = new Employee("else", ...);
```

> Class with main() method should ideally be different from the class whose objects it uses.

## Private/Public
- By default, every method and attribute is public
- Every time we call the `new` keyword, it stores the variable in the heap unlike the default datatype variable which are stored in the stack
- Private keyword for class members - cannot be accessed through public objects. Can only be accessed through class members.
- To make a class visible to the JVm and other files, you must declare it as public
- All public classes need their respective files
- Non-public classes need not have their own files

## Final Keyword
- similar to const in C


- E is a reference to any object of class employee e
- We use `final` keyword alongside the variable which is used to initalize an object of a class in order to prevent us from loosing the reference to that object
```java
final Employee e = new Employee;
```

## Static Keyword
- Can be used without the class object obnly with the class name only
- Oly one variable shared across all objects of the class
- Eg: System.out.println

# TUTORIAL 1 : C214 : 21/08/24
- Interviews require : DSA + OOP + DBMS + OS

## OOP
- Classes are a collection of data (methods and attributes)
- Calling a null pointer = skill issue L

# LECTURE 4 (21/08/24)

## UML : Unified Modeling Language (also called Useless modelling language)
- UML Diagrams show relationships among classes and objects
- UML class diagram consists of one or more classes each with sections for class name, attributess (data), and operations (methods)
- eg:

| Player     | -> | Die        |
|------------|----|------------|
| Attributes | -> | Attributes |
| Methods    | -> | Methods    |

## Class relationships
- The whole point of OOP is that your code replicates real world objects, thus making your code readable and maintainable
- How are different classes related to each other?

### Most common class relationships
- [Reference](https://www.scientecheasy.com/2021/02/class-relationships-in-java.html/)

1. Composition
    - One of the attributes of B is contained inside class A and also initializing it
    - A "contains" B
    - A instantiates B as well
    - Class A contains objects of class B
    - By default memory is not allocated until new keyword is called, rather keeps a reference to that class
    - Diamond shaped arrow head is used to show that an object is "composed" of B
    - Asymmetric: A knows about B but B has no way to get the objects of A
2. Association
    - Defining but not referencing it
    - A "knows-about" B
    - Relationship between two objects
    - but B is not a component of A
    - B is not instantiated but being referred in A
    - Symmetric relationship : both can access each other's objects
    - Objects MAY not be instantiated
    - Solid arrow with regular arrow head in UML
3. Dependency
    - Neither declaring it nor referencing it
    - A "depends on" B
    - ... if A cannot carry out its work without B, but B is neither a component of A nor it has association with A
    - Neither B has a component in A nor does B is instantiated in A but A depends on a service from B
    - Eg: Inheritance
    - Dotted arrow with a regular arrow head in UML

    ```java
    class Die {
        private int faceValue, faces;
        ...
        public void roll() { ... }
    }

    class Player {
        public void takeTurn(Die die){
            die.roll();
            ...
        }
    }
    ```

### Coupling
- If several classes of an application program depend on each other, then we say that the coupling between classes is high.

> Note: referring to something that is not initialized = Exception (just like referencing null pointer in C)
> Note 2: In the association example, PetShop should be defined first in the main function because 
> Note 3: In Java, objects do not store block of memory until a constructor function has been called through instantiation, it creates a reference
> EVERY OBJECT IS A REFERENCE BY DEFAULT

## Overloading
- Method Overloading
    - Redefinition of the methods again in inherited children classes inherited from the parent class (which contains that method as well)
    > Note: during inheritance, the child inherits all data (including private stuff as well and constructors also)
    > Child class can overwrite (NOT EDIT) the constructor of parent class
- Constructor Overloading

# LECTURE 5 (28/08/24)

## INHERITANCE
- Closely connected to polymorphism
- Referencing many related objects as one generic type
- Reference of parent class utilizing 

# LECTURE 6 (31/08/24)

## INHERITANCE AND POLYMORPHISM

- Child class "extends" parent class
- All attributes and methods of the parent class are copied to the child class
- And the parent class has a reference to the child class

### POLYMORPHISM
- Method types : privare, static, final
- Static binding : we do not need the instance of the object to call its methods
- Dynamic binding
- Polymorphic associations : dynamic binding at runtime
- Everything is a reference : attribute, methods
- If there is a method in the child class with the same name as one in the parent class, the compiler doesnt know which one to call so, the compiler does dynamic binding in order to link those
- "Protected" methods : Can be inherited but cannot be called through an instance
- Java packages are like files in a GUI/LINUX filesystem
- "Static", Final" and "Private" methods cannot be inherited even though all other methods which are public can be inherited
- Super is the reference to the parent class
- Fork() creates child processes

### ABSTRACT CLASSES
- The parent class is not defining that method but the child class is the one that provides it a definition
- If you have even a single `abstract` method, you NEED to make the class `abstract`
```java
public abstract class Person{
    public abstract String getDescription();
}

public class Student extends Person {
    public String getDescription() {
        return ...
    }
}
```

## OBJECT
- Parent of all classes (implicit); not of primitive types - int, char, byte, etc
- Can be assigned to object at any class

```java
Object obj = new Employee("something", 3000);
// type casting to another object without any loss of information unlike float to decimal
Employee e = (Employee) obj;
```

### METHODS
1. Equals() method
    - Whether they point / refer to the same object or not (default) or same value or not, etc
    - Object class defines equal(). Other classes can extend it with their own definition
2. toString() method
    - Used to print a string equivalent information of the class, eg. System.out.println(toString(s));
    - The return type is String and name is toString()
    - "." : dereference operator
    - Used to access the values of a reference

## OBJECT WRAPPERS AND AUTOBOXING
- Object corresponding to a primitive type [Integer, Long, Flloat, Double, Short, Byte and Boolean] (case sensitive)
- Their objects are immutable - once a wrapper object has been created their values cannot be changed
- Methods inside Integer and other primitive types are final so we cannot modify it and we cannot inherit it
```
Integer[] list;
list = new Integer[500];
list[0] = 1;
list[1] = 1;
list[i]++;
```
- But list[i] == list[j] fails
- For that, we use Equals method
- This works as well:
`list[i].intValue() == list[j].intValue()`

## ENUM CLASSES
- These enums have constructors as well

```
public enum Size {

    SMALL("S"), MEDIUM("M"), LARGE("L"), EXTRA_LARGE("XL");

    private String abbreviation;

    private Size(String abbreviation) { this.abbreviation = abbreviation; }
    public String getAbbreviation() { return abbreviation; }

}

Size s = Enum.valueOf(Size.class, "SMALL");

```

# LECTURE 7 (02/09/24)

## Generic Array lists
- Generic class with a type parameter
- Provides a dynamically growing (or shrinking) array of objects
- `ArrayList<Integer> myList = new ArrayList<Integer>();`

# LECTURE 8 (04/09/24)
- Interfaces are classes has nothing, no attributes, no methods.
- Expects the user to define all those things
- so, instead of extends, we use `implements` keyword to inherit an interface
- Inner class means a class inside a class (nesting)

```java
public class TalkingClock {
    privat int interval;
    private boolean beep;

    public TalkingClock(){
        ...
    }

    public class TimePrinter implements ActionListener {
        // Inner class
        ...
    }
}
```

- What if both the outer class and inner class have the same attribute beep?

```
if (TalkingClock.this.beep){
    Toolkit.getDefaultToolkit().beep();
}
```

- Accessible without requiring an object
- Outer class encapsulates inner class
- We can define a class which implements an interface without naming it
- Same as anonymous class

```java
public void start(int interval, boolean beep){
    var listener = new ActionListener(){
        public void actionPerformed(ActionEvent event){
            ...
        }
    }
}
```

- `var` in java is same as `:=` in go
- Automatically assigns data type
- Syntax for anonymous class

```java
new SuperType(params){
    inner class methods and attributes...
}
```

## Exceptions and Exception Handling
- Array out of error bounds
- IOExceptions; eg: File not found
- Mathematical Exception: divide by zero, Not-A-Number
- Exceptions are also classes
- Every error is an event
- And every event has an event handler

```
Throwable
|
|__ Error
|   |__ ...
|__ Exception
    |__ IOException
    |   |__ ...
    |__ Runtime Exception
    |   |__ ...
    |__ ...
```

- We can create our own excpetion by extending one of these abstract exception classes
- Note: we cannot extend the throwable class

### STACKFRAME
- A region of stack reserved for local variables and other stuff of a specific function / method / program
- Every time an exception is thrown and if it has to handle that, a new stack frame is made

## Throwing an exception
- You have to specifically define that the specific class throws an exception

```java
String readData(Scanner in) throws EOFException {
    while(...){
        if(Condition){
            throw new EOFException();
        }
    }
}
```

## Handling that exception

```java
try {
    readData(...);
} catch (EOFException) {
    ...;
}
```

# LECTURE 9 (09/09/24)

## Exceptions
- Exceptions will slow down programmes
- Note: try and catch blocks have separate stack frames
- It is better to use an if(..)else(..) because we do not return to the try stmt if an exception is caught since a new stackframe is created for the catch block and the try block stackframe is (eventually) deleted by the garbage collector
    - We cannot return from a catch and resume to whatever was being done in the try block
    - Whereas, in if else we can use `goto`

```java
try {
    ;
} 
catch(Excpetion e) {
    System.out.println(e)
}
```
- Here, the .toString function of the `e` class is run whenever we try to print it
- if .toString does not exist, it prints the reference to the object
- Because PrintStream.println has an overload that takes an Object, and then calls its toString method.

## Try, Catch, Finally
- After all try, catch blocks, just before the program terminates, the finally block is called
- Special block of code that is executed whether or not an exception is thrown
- Finally is like a destructor for try-catch blocks
- One catch per exception / One catch for all Exceptions : Both acceptable
- Methods tells Java compiler that what kind of errors it can throw
- The lowermost heirarchy of exceptions is preferred (i.e. the specific exception rather than its parent generalized class) by the JVM
    - i.e. if FileNotFoundException error is defined and is thrown, it will be preferred in catch stmt rather than its parent, Exception

```java
class Something {
    public loadimg(String s) throws FileNotFoundException, EOFException, SomethingElseException {

    }
}
```

## Extending parent Exception
- Both constructors work and serve similar purpose

```java
class FileFormatException extends IOException {

    public FileFormatException() {
        ...
    }

    public FileFormatException(String gripe) {
        super(gripe);
        ...
    }

}
```

## Catching what was thrown
- Both works

- Handling 2 exceptions together
```java
try {
    ...
}
catch (FileNotFoundException | UnknownHostException e){
    ...
}
catch (IOException) {
    ...
}
```

- Handling each exception individually
```java
try {
    ...
}
catch (FileNotFoundException e){
    ...
}
catch (UnknownHostException e){
    ...
}
catch (IOException) {
    ...
}
```

## Rethrowing exceptions
```java
try {
    ...
}
catch (SQLException e){
    throw new ServletException("database error: " + e.getMessage());
}
```

## ASSERTIONS
- We have 3 ways to handle with errors
    - If else blocks with conditions
    - Try Catch block with specific error name
    - Assertions
- Used for debug purposes
- Not used in production code
- Faster execution than throwing exceptions
- Irrecoverable
- Terminates the program
- `assert [condition];`
- `assert [condition] : [expression];`
- Assertions = Exceptions which you cannot catch
- Check [condition]. If false then create an object with argument [expression] of type AssertionError.
- And JVM catches it and prints the details presented in the [expression]

```java

if(x > 0){
    ...
} else {
    ...
}

if(x > 0){
    ...
    throw new exception("myexception");
}
catch(exception ep){
    ...
}

assert x > 0 : new String("x > 0");

```

## LOGGING
- We use domain sockets to tell syslog to dump log files
- Its a different process than the main program
- Everytime you type to a terminal, the system needs to instantly pass it to the graphics buffer to show on the monitor
- But writing to a file, means writing to a buffer (cache) and then it is written to the main storage on write command
- And since writing to main storage is slow whereas writing to the cache is faster and hence writing to a file is faster than writing to a console
- Also, decoupling the logger program means making the logging mechanism separate than the main program and hence does not depend on the main program's execution
- Also, some low priority messages can be missed in certain cases without any penalty

### In java
- `Logger.getGlobal().info("File->Open menu item selected);`
- Info is a log level here
- Syslogs has levels in logging
    - SEVERE
    - WARNING
    - INFO
    - CONFIG
    - FINE
    - FINER
    - FINEST
- Two methods used for logging
```java
void throwing(String className, String methodName, Throwable t);
void log(Level l, String message, Throwable t);
```

- Child throws an excpetion and parent catches it and logs it
- The parent's logger can be connected to the child's logger
```java
try{
    if(..){
        var e = new IOException("...");
        logger.throwing("commycompany.mylib.Reader", "read", e);
        throw e;
    }
}
catch (IOException e){
    Logger.getLogger("my.mycompany.myapp").log(Level.WARNING, "Reading Image", e);
}
```

# LECTURE 10 (11/09/24)

## GENERIC CLASSES
- Just like unions in C
- But implementing it might not result in an optimized union since we cannot explicitly control memory
- We can implement them using Object (supermost class in context of heirarchy)

## Generic Programming
- <T> : container / template
    - Can hold any non-primitive type / or any class
    - Placeholder
    - Cannot template's type after 1st definition

```java
public class My GenericList <T> {

    private ArrayList <T> myList;
    
    privat T first;
    privat T second;

    public Pair() {
        this.first = null; // will uninitialize it
        this.second = null; // will uninitialize it
    }

    public Pair(T first, T second) {
        this.first = first;
        this.second = second;
    }

    public T getFirst() { return this.first; }
    public T getSecond() { return this.second; }

}
```

### Object Initialization
```java
var files = new ArrayList<String>();
// or
ArrayList<String> files = new ArrayList();
```

### Advantage of Wrapper Classes over primitive types
- To bring the super class Object unlike primitive types which are like
- Is a part of a heirarchy under Object
- Is a class

### GENERIC METHODS
```java
class ArrayAlg {
    public static <T> T get Middle(T something, ... a) { // a list of arguments : elipsis (**args in python (BAD LANGUAGE WORST AAAAAAAAAAAAA BOOOOOOOOOOOOOOOOOO LLLLLLLLLLL))
        return a[a.length/2];                            // a is the array/container 
    }
}

String middle = ArrayAlg <String> getMiddle("something", "foo", "bar");     // the arguments passed are treated as part of an array
String middle = ArrayAlg.getMiddle("something", "foo", "bar");

```

### generic classes with two fields
- T1 and T2 can be any non primitive type
- Can be same as well

```java

public class Pair <T1, T2> { 

    private T1 key; 
    private T2 value;

    public Pair(T1 _k, T2 _v) {
        this.key = _k;
        this.value = _v;
    }

    public T1 getKey(){
        return this.key;
    }

    public T2 getValue(){
        return this.value;
    }

}

```
