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
