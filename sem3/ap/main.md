<style>
*{
    font-family: "SF Mono";
    font-weight: bold;
    letter-spacing: -0.5px;
    font-size: 0.8rem;
}
</style>

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
```java
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

```java
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

```java
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

- `Object array[] = new Integer[10];` Legal Statement; allowed
    - Array of objects pointing to an array of integers
- `List<Object> myList = new ArrayList<Integer>();` this gives compilation error
    - List of objects pointing to an integer list

- Illegal (Errors)
    - An object array cannot point to generic type arrays
```java
List<Integer> intList[] = new ArrayList<Integer>[5];
List<String> strList[] = new ArrayList<String>();

strList.add("something");
Object objArray[] = intList;
objArray[0] = strList;
```

- ClassCastException (error) `int my_num = objArray[0].get(0);`

### NOTE
- Arrays are covariant
    - Subclass array type can be assigned to superclass array reference
- Generics are invariant
    - Subclass type generic type cannot be assigned to superclass generic reference

## Bounds For Type Variables
- `public static <T extends Comparability> T min(T[] a) {...}`
- Specificying what all it can take
- this is NOT inheritance
- This also works : `T extends Comparable & Serializable`
    - they are abstract class / interface
    - At a time a class can only extend one "thing", so it extends either of the two at an instance
> Note: we need `implement` for interfaces whereas `extends` otherwise

## Type Erasers
- Rule: Erase and replace generic type with a raw type (for bounded types) and Object for unbounded
```java
public class Interval <T extends Comparable & Serializable> implements Serializable {
    private T lower;
    private T upper;
    ...
    public Interval(T first, T second) {
        if(first.compareTo(second) <= 0) {
            lower = first;
            upper = second;
        }
        else {
            lower = second;
            upper = first;
        }
    }
}
```
- To
```java
public class Interval implements Serializable {
    private Comparable lower;
    private Comparable upper;
    ...
    public Interval (Comparable first, Comparable second){ ... }
}
```

# LECTURE 11 (23/09/2024)
- Primitive types => Non-Primitive types => Generic Classes
- Generic classes are collections
- Here, E can be any type

```java
public interface Queue<E>{
    void add(E element);
    E remove();
    int size();
    Iterator<E> iterator();
}
```

> Note: normal arrow = extends and dotted means implements

```
Iteratable*
|__ Collection*
|__ List*
|   |__ ArrayList
|   |__ LinkedList
|   |__ Vector
|       |__ Stack
|__ Queue*
|   |__ PriorityQueue
|   |__ Dequeue*
|       |__ ArrayDequeue
|__ Set*
|__ HashSet
|__ LinkedHashSet
|__ SortedSet*
|__ Tree Set

Here, [something]* means it is an interface
```

## Iterator

```java
public interface Iterator<E>{
    E next();
    boolean hasNext();
    void remove();
    defaut void forEachRemaining(Consumer <? super E> action);
    // <? super E> : anything that is a super class of E
    // called a wildcard
}

// multiple interfaces can be implemented by the same class
public class something() implements Collection, Iterator {

    Collection<String> c = new [anything derived from Collection like ArrayList/Vector/LinkedList/etc]
    // this will never happen
    // Collection<String> c = new Collection
    // because constructor of an interface does not exist

    Iterator<String iter = c.iterator();
    while(iter.hasNext()){
        String element = iter.next();
        // do something with the element
    }
}
```

> Interface does not has a constructor

- Iterator is an object used to iterate through elements of a collection

### Inline in C
- Instead of jumping to a function when called in the main function, inline functions' statements are directly copied to the current lines in order to increase speed

### Lambda Function in Java
```java
(String first, String second) -> {
    // do something
}

// OR

(String first, String second) -> return first + second;
```

### Removing consecutive elements
```java
Iterator<String> it = c.iterator();
it.next(); // moves from beginning to between index 0 and 1
it.remove(); // removes the object just behind the iterator

// so, logically, this gives an error
it.remove();
it.remove();
// because the JVM still has the reference to the removed object
// to update it, we need to do it.next() before removing
// because remove just tells the JVM garbage collector to remove the object

// this works
it.remove();
it.next();
it.remove();
```

### Linked List
- In java, all linked lists are (circular) double linked lists
- You don't go backwards but we go only forward in a circle, i.e. point to the first object when .next() called on the last object

# TUTORIAL : 25/09/24

## OBJECT CLASS

### toString(): String
- returns class instance name + its memory by default

### equals(): boolean
- calls the toString methods of two different objects to see if the condition satisfies
- == will compare the memory addresses for Reference data type and .equals() compares value whereas in primitive data type, == will compare only values
- By default, equals() will compare memory addresses

### getClass({class_instance_name}): Class<T>
- returns class object

### clone()
- `Employee emp2 = (Employee) emp.clone();`
    - Attributes which are classes (i.e. Reference data type) will get a shallow copy is by reference i.e. the copied value also change with change in the initial object's value
    - Attributes which are primitive data type will get a deep copy i.e. it will create a new memory and each other's values are independent
- by default copies the value of primitive data types from one class to another
- To override the method
    - import java.lang.Cloneable;
    - you need to implement Clonable because it is an interface
    - clone() is protected
- `Employee emp2 = emp;`
    - emp2 references emp
    - both share same memory


# LECTURE 12 (25/09/24)
- Midsem syllabus : till monday's class
- Why are we looking at random syntax?
    - Up until the last decade, Java had classes for its standard libraries
    - But now, we have generic classes for standard libraries, alongside the classes for backwards compatibility
- We use standard libraries because it has optimized implementations

- Extends something from the object list and implements something from the collection objects and implements an iterator

## Linked List
- `LinkedList.add()` always adds at the end. What if i want to add in the middle?
- We use the iterator
- Iterator is an "in-between" parser
- Gives you the reference of the current object and moves past it but before the next object
- If we do remove, remove the object the iterator just passed through
- Illusion of the iterator is that is it between objects
- if we do remove, it is not how it works but the illusion is such that the object before the iterator's position is removed

## ArrayList
- A class will mimics an array
- clear() : removes all the elements but keeps the object is kept even though the reference becomes null

## Sets
- Collexction of unique elements with no order

### HashSet<E>
- Keeps elements in a hash table
- Randomly ordered by their hash code
- Indexed by a string
- Searching and insertion takes constant complexity : O(1)

```java
import java.util.HashSet;

HashSet<String> students = new HashSet<String>();

students.add("random person 1");
students.add("random person 2");
students.add("random person 3");
students.add("random person 4");
System.println(students); // prints elements in random order cus set

student.contains("something"); // returns boolean
students.remove("random person 4"); // returns boolean status code

students.clear();
students.size();
```

### TreeSet
- Elements stored in a red black
- Red Black Tree ~ AVL Tree
- Red Nodes have black children and vice versa
- Searching and insertion takes logarithmic complexity
- When you print it, it prints in sorted order unlike HashSet

## Maps
- Key-Value pair
- Keys are unique
- Keys are always Strings
- Value can be any objects

### HashMap
- Stored in a hash table
- Random Order
- O(Log(n)) for printing
- O(1) for insertion / searching
- Key gives set
- Value gives collection

```java
import java.util.HashMap;

public class Main {
    public static void main(String[] args){

        HashMap<String, Integer> something = new HashMap<>();

        something.put("a", new Integer(100));
        something.put("b", new Integer(101));
        something.put("c", new Integer(102));

        System.out.println(something);
    }
}
```

### TreeMap
- Stored in a red black tree order
- Sorted Order
- Ordered using the `.compareTo()` function of the key (String here)

```java
import java.util.TreeMap;

public class Main {
    public static void main(String[] args){
        TreeMap<String, Integer> something = new TreeMap<>();
        something.put("a", new Integer(100));
        something.put("b", new Integer(101));
        something.put("c", new Integer(102));
        System.out.println(something);
    }
}
```

> Java API : (API)[https://docs.oracle.com/javase/8/docs/api/]

- Primitive -> different memory
- Reference -> Common memory

> We can define member variables in interface only if it is primitive
> Interfaces just cannot have constructor i.e. an object cannot be created but we can have default and static ethods
> An interface can inherit other interfaces without implementations (nested interfaces)

# VIM Autocomplete features
- \<C-x\>\<C-l\> : Line Completion
- \<C-x\>\<C-s\> : Spell Completion (you need :set spell)
- \<C-x\>\<C-f\> : Dir completion
- \<C-x\>\<C-k\> : Dictionary Completion
> Useful stuff = :h ins-completion

# LECTURE 13 (MISSED: class just after midsems) (13/10/24)
- UML: Unified Markup Language
- UML contains everything besides the implementation
- Flat line (no arrow head)
    - not an implementation / inheritance
- Solid Arrow with transparent head
    - inheritance
- Dotted Arrow with normal head
    - implementation
    - also shows if a class `<<throws>>` the exception
- For an interface, you write `<<interface>>` above interface name

## UML multiplicities
- 0..1 zero or one instance
- 0..* or * no limit on the number of instances (including none)
- 1 exactly one instance
- 1..* at least one instance

## Use Case / action diagram
- A use case diagram is a collection of actors, use cases and their communications

### Actor, Actions
- Who is using the entire set of classes
- Actors / Actions can be classes / methods which are interconnected using some relationships
- Eg: Human / management / patient / doctor
- The classes being called by the main through instantiation can be classified as actors
    - Each instantiation create a new actor then
- Actors are not part of the system

## Association Relationship
- Exists onloy between an actor and a use case
- Indicates that an actor can use certain functionality of the system
- Representation: Solid arrow with normal arrow head

## Generalization Relationship
- Could exist between two actors or between two use cases
- ~ inheritance
- Indicates parent / child relationship
- Representation: Solid line with triangular and hollow arrow head
    - From child to parent

## Extend Relationship
- Exists only between use cases
- Represents optional or seldom invoked cases
- Like interfaces (no definition, only declaration) [not inheritance]
- Represented using a dashed arrow with an arrow head
- `<<extend>>` is also mentioned above the arrow
- The direction of the arrow is towards the extended use cases (given in ppt)
- Actual, Arrow direction: Implementation TO interface

## Include Relationship
- Only between use cases
- Represents behaviour that is factored outside of the use case
- Doesn't mean that the factored out use case is an optional or seldom invoked case
- Represented using dashed arrow with an arrow head with `<<include>>` written on top
- One method relies on another method
- Direction: from the "class that depends on ..." to the "dependencies"
- Like call -> telephone

> Use case = method \
> Semantics : meaning of something \
> Solid line : Inheritance case \
> Dotted line : Interface case

# LECTURE 14 (20/10/24)

## GUI
- Construct GUI components
- Render GUI
- Check for any input
- Respond to user input
- Go back to render part and repeat

# LECTURE 15 (23/10/24)

## GUI
- Listener / handler : responds to events
- JVM handles window rendering (even window decorations like wind titlebar)
- Environment agnostics
- Speaker / microphone is also an interface
- Frameworks like fx and awt, are like a wrapper on top of existing display environment
- Ensures same behaviour across any device even though it can look different
- In windows, we have `win32` which is a C API which communicates with the OS for window related something
- In linux, we have individual graphical systems like X11/wayland
- JVM = Event / callback driven environment

## JFRAME
```java
import java.awt.*;
import java.swing.*;

public class SimpleFrame extends JFrame {

    private static final int DEFAULT_WIDTH = 300;
    private static final int DEFAULT_HEIGHT = 200;

    public SimpleFrame(){
        setSize(DEFAULT_WIDTH, DEFAULT_HEIGHT);
        // this beelongs to JFrame
    }
}

public class SimpleFrameTest {
    public static void main(String[] args){
        EventQueue InvokeLater(() -> {
            var frame = new SimpleFrame();
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setVisible(true);
            // swaps graphics buffers to render the window
        });
    }
}
```

- Frame Properties
```
Object
|__ Component
|__ Container
    |__ JComponent
    |   |__ JPanel
    |__ Window
        |__ Frame
        |__ JFrame
```
- The last three stuff makes the window works like the one we have in Windows OS
- These are concrete classes, not interfaces
- Basic methods like isVisible, setVisible, setSize, setLocation, getSize, setBounds are defined by Component class
- Component reference is passed to frame class
- Overriding &cross;
- Extending or implementing  &check;

- `frame.pack()` is telling the VM to re-render the window
- Used after adding a component
- But not needed since adding the component already re-renders the window
- This is used to pick out any bugs

## 2D objects
- There is a `Shape` interface
- Line2D, Rectangle2D, Ellipse2D, etc, are all implementations of `Shape` interface
- Graphics is a sub class of Graphics2D
```java
public void paintComponent(Graphics g){
    // upcasting
    Graphics2D g2 = (Graphics2D) g;
    Rectangle2D rect = ...;
    g2.draw(rect);
}
```

```
Rectangle2D
|__ Rectangle2D (Float)
|__ Rectangle2D (Double)
```

```
Shape
A
|__ Line2D
|__ Rectangle Shape
    A
    |__ Ellipse2D
    |__ Rectangle2D
        A
        |__ Rectangle
```

```
Point2D
A
|__ Point
```

- `Rectangle` = bounding box
- We dont have a circle class because we can have the Ellipse and set both diameters to same

# LECTURE 16 (04/11/24)
- Lambda function does not has a name
- Also, this process is avoided: go to stack frame -> do something -> return back
- Less costly

```java
c = new JFrame();
frame.add(c);
```
- JFrame are like picture frames
- They have titles
- They need to be `setVisible(true);` to be able to be rendered
- `add()` is a method of JFrame
- Type of Arg of `add()` is Component
- `pack();` re-renders it by first checking the dimension of the component and then calls paintComponent to render the graphics on it

# 2D objects
- Shapes are of two types - based on floating point or double pixels

## Event
- we have EventListeners (interface) and EventAdapters (abstract class)
- The advantage of adapter over listener is that we dont have to implement every single method when we "implement" or "extend" it

# LECTURE 17 (11/09/24)

## File Streams and IO Operations
- Read / Write = Input / Output

## File Operations (general)
- Open / Init : We assign a descriptor in UNIX or File Handle in WINDOWS or File Channel in JAVA
    - Mode is passed in this stage
        - READ
        - WRITE
            - Writing is not done immediately to the main disk on every byte written
            - Virtual Memory is used to create a buffer to hold the data until some threshold time/ data size passes
            - This is called Buffered IO
            - For some use case, we dont need buffering to reduce latency
            - Buffering != Caching
        - APPEND

- File IO can be buffered or unbuffered

- Accessing File content
    - Sequential Access
        - aka seek operation
        - this was used in magnetic tapes in older times
    - Random Access
        - aka Memory Mapped
        - Entire file is mapped to a memory like an array and you can access it at any point

## Hierarchy
```
InputStream
|_ AudioInputStream
|_ VideoInputStream
|_ PipedInputStream
|_ BufferedFileInputStream
|_ StringBufferedInputStream
|_ ...

OutputStream
|_ ByteArrayOutputStream
|_ FileOutputStream
|_ AudioOutputStream
|_ PipedOutputStream
```

- In UNIX, everything is a file

## InputSteam
```
abstract int read()
// return -1 if error or the byte read (upcasted to an int)
```

## OutputStream
```
abstract void write(int b)
// write a single byte (upcasted to an int)
```

## Flushing a buffer
- If something is held in the buffer and is not written to the main memory, it will be written to the main disk afte this function is called

- Flushable, Closable, Appendable : Interface

## InputStream
- FileInputStream - Read bytes from file
- FileOutputtream - Write bytes to file

```java
FileInputStream fin = new FileInputStream("something.dat");
byte b = (byte) fin.read();

DataInputStream din = ...;
double x = din.readDouble();
```

- FileInputStream returns file data only in bytes whereas DataInputStream can return different datatypes according the read method called

```java
FileInputStream fin = new FileInputStream("employee.dat");
DataInputStream din = new DataInputStream(fin);
double x = din.readDouble();
```
- Note: DataInputStream constructor needs object of class InputStream. It need not be FileInputStream.
- So we can use any source like AudioInputStream or anything else for this class

```java
DataInputStream din = new DataInputStream(
    new BufferedInputStream(
        new FileInputStream("employee.dat");
    )
)
```
- By default InputStream is unbuffered

## PushbackInputStream
- One use case : CLI
- Used for unbuffered stream since the stream has undefined behaviour if you do "next" with nothing at the next place
- Using this will not result in undefined behaviour, instead move to the next state, i.e. for some cases, goes to the previous state (waiting for next input) i.e. forget that input happened
- Not useful for buffered streams

```java
PushbackInputStream cli = new PushbackInputStream(System.in);
if(cli.read().equals('q')){
    quit;
} else(cli.read().isLower()){
    cli.unread();
}
```

## IO
- Two types of IO
    - ASCII File
        - ASCII: 8 bits / 1 byte dedicated to define one alphanumeric symbol
        - ASCII characters are stored as the content of the file
    - Binary File
        - If you are storing / dumping actual bytes in the file
> NOTE: ASCII is the standard used to display text on the screen, not actual bytes / bits

# LECTURE 18 (13/09/24)
- Two types of io operations: 
    - Non Blocking
    - Blocking
        - Suspended
-  TTY is unbuffered
    - System.out.flush() is useful here


## BufferedReader
```java
Reader br = new BufferedReader(new BufferedInputStream(new InputStreamReader("myfile")));
String next_str = br.readline();
char next_char = br.read();
List<String> lines =  Files.readAllLines(path, charset);
```
- BufferedStream and BufferedReader have the same effect
- EOF is a byte and \n is an ascii char
- Stream read bytes and some methods read uptil the EOF byte
- Reader/Writer can read ascii as well

```java
PrintWriter out = new PrintWriter(new FileOutputtream("something.txt"), "UTF-8");
```

## ZipInputStream
```java
ZipInputStream zin = new ZipInputStream(new FileInputStream(zipname));
ZipEntry entry;
while((entry = zin.getNextEntry()) != null){
    InputSteam in = zin.getInputStream(entry);
    // read the contents of in
    zin.closeEntry();
}
zin.close();
```

```java
ZipOutputStream zout = new ZipOutputStream(new FileOutputtream("test.zip"));
// for all files {
    ZipEntry ze = new ZipEntry(filename);
    zout.putNextEntry(ze);
    zout.write(...); // takes only bytes or byte array
    zout.closeEntry();
//}
zout.close();
```

- How will you write ascii?
    - Convert string to bytes using String.toByte()

```java
Path absolute = Paths.get("/home", "something");
Path relative = Paths.get("repo", "notes", "coding", "rust");
```
