<style>
*{
    font-family: VictorMono NFM;
    font-weight: SemiBold;
}
</style>

# Hello World
```dart
print("Hello World");
```
# Variables
```dart
String name =  "something";
int age = 19;
double pi = 3.14159;
bool something = false;
```

# Math

| Function | Symbol |
|----------|--------|
| Add      | +      |
| Subtract | -      |
| Multiply | *      |
| Divide   | /      |
| Modulus  | %      |

# Comparison Operators

| Operator | Function                 |
|----------|--------------------------|
| ==       | Equal To                 |
| !=       | Not Equal To             |
| >        | Greater Than             |
| <        | Less Than                |
| >=       | Greater Than or Equal To |
| <=       | Less Than or Equal To    |

# Logical Operators

- And
- Or
- Not

# If Else
```dart
if(condition){
    do something;
} else if(another condition){
    do something else;
} else{
    do nothing;
}
```

# Switches
```dart
switch(variable){
    case "condition 1":
        do something1;
        break;
    case "condition 2":
        do something2;
        break;
    case "condition 3":
        do something3;
        break;
    case "condition 4":
        do something4;
        break;
    default:
        do nothing bruh;
        break;
}
```

# Loops
- For Loop
```dart
for( int i = 0; i <= 10; i++ ){
    do something;
}
```

- While Loop
```dart
while(condition){
    do something;
}
```

# Functions
```dart
void foo(){
    print("something");
}
foo();

void bar(String name){
    print("Hello " + name);
}
bar("Aditya");

int sum(int a, int b){
    return a + b;
}
int something = sum(2, 4);
```

# Data Structures

- List (ordered) : Can have duplicates
```dart
List something = [1,2,3,4,5];
List<int> nums = [9,8,7,6,5];
List<String> names = ["sdnfsd", "dsfnds", "sdfnnwjn"];

for( int i = 0; i < something.length; i++ ){
    print(something[i]);
}
```
- Set (unordered) : Cannot have duplicates
```dart
Set<String> name = {"something", "foo", "else"};
```

- Map : key-val pair
```dart
Map user = {
    'name': 'Something',
    'age': 19,
    'height': 169,
};
print(user['age']);
```
