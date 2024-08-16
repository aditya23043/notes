# CSE 201 : ADVANCED PROGRAMMING => Lecture 0 (12/08/2024)
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
### METHOD OVERLOADING 
- Defining another function with same name with arguments with different data types in order to make it work with different data types
### INHERITANCE
- Child class copies all methods from inherited parent class
### ABSTRACTION
### METHOD OVERRIDING
### POLYMORPHISM
- If there are two child classes 'B' and 'C' that inherit from one parent class 'A'
- Since 'A' had function X() defined in it, 'B' and 'C' also inherit it
- But then if we override those X() functions in both 'B' and 'C' and then call B.X() then JVM ensures that the new X() function inside 'B' is only called and not the parent X() function from 'A'

## BITWISE OPERATORS
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

# Lecture 1 (14/08/24)

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
