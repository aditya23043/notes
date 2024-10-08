# MIDSEM Revision for AP

## Final
- Like const in C/C++
- Define and initialize once
- Can be used multiple times
- Its value cannot be changed after initialization

## Private
- Cannot be accessed through objects
- Can be accessed only be class methods

## Protected
- `protected` methods and objects cannot be accessed by the objects of the class just like `private`
- But can be accessed by child classes

## Static
- Can be used without an object by just calling the class name

## Constructors
- Called when object is being instantiated
- A class can have multiple Constructors

## Prevent inheritance
- Without making methods / attribs private, how would you prevent a method from being inherited??
- By making them final
- `final` prevents inheritance

## Object Wrappers
- Integer, Float, Long, Double, Short, Byte, Boolean
- Are `final`
- Immutable
- Cannot be inherited

### Autoboxing
- When assigning a primitive data type like int to an Object wrapper class like Integer, java automatically converts it and this process is called autoboxing

```java
Integer a1;
Integer a2;

a1 = 1;
a2 = 1;

System.out.println(a1 == a2); // ERROR
System.out.println(a1.intValue() == a2.intValue()); // Works
```
- This is because when we compare two objects using ==, it compares there reference
- Compares value in case of primitive data types
