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

# Basic About Me page
## Concepts Covered
- Main function
- Stateless Widget
- Material App
- App Bar
- Scaffold
- Text Widget
    - Text Styling
- Icon Widget
    - Icon Styling
- Colors
- Column

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ABOUT ME",
            style: TextStyle(
              fontFamily: "JetBrainsMono NFM",
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
          foregroundColor: Colors.white70,
          centerTitle: true,
          elevation: 0,
          leading: const Icon(Icons.home),
          actions: [
            IconButton(
                onPressed: () {
                  print(
                      "Bro tryin' to logout lmao, the application ain't even finished yet lol");
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        backgroundColor: Colors.blueGrey[700],
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white60,
                      size: 32,
                    ),
                    Text(
                      "Aditya Gautam",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: "VictorMono NFM",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.numbers_rounded,
                      color: Colors.white60,
                      size: 32,
                    ),
                    Text(
                      "9717166477",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: "VictorMono NFM",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.school,
                      color: Colors.white60,
                      size: 32,
                    ),
                    Text(
                      "IIITD",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: "VictorMono NFM",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

## OUTLINE
```pseudo
  ƒ void main()
   └ 󰜬 MyApp
   MyApp
   ├  MyApp({super.key})
   └ 󰆧 Widget build(BuildContext context)
     └ 󰜬 MaterialApp
       └ 󰜬 Scaffold
         ├ 󰜬 AppBar
         │ ├ 󰜬 Text("ABOUT ME")
         │ ├ 󰜬 Icon(Icons.home)
         │ └ 󰜬 IconButton
         │   └ 󰜬 Icon(Icons.logout)
         └ 󰜬 Center
           └ 󰜬 Container
             └ 󰜬 Column
               ├ 󰜬 Column
               │ ├ 󰜬 Icon(Icons.person)
               │ └ 󰜬 Text("Aditya Gautam")
               ├ 󰜬 Column
               │ ├ 󰜬 Icon(Icons.numbers_rounded)
               │ └ 󰜬 Text("9717166477")
               └ 󰜬 Column
                 ├ 󰜬 Icon(Icons.school)
                 └ 󰜬 Text("IIITD")
```

# Expanded

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // 1st box
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            // 2nd box
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
            // 3rd box
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepPurple[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

# List View
- Scroll is vertical by default

## Vertical Scrolling
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 500,
              color: Colors.deepPurple,
            ),
            Container(
              height: 500,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 500,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}
```

## Horizontal Scrolling
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 500,
              color: Colors.deepPurple,
            ),
            Container(
              width: 500,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 500,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}
```

## List View Builder
### Count from 0 .. (n-1)
- Here, n = 50
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (content, index) => ListTile(
            title: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}
```

### Using a list data type
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List name = ["something", "else", "idk", "aditya", "gautam", "demn"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (content, index) => ListTile(
            title: Text(name[index]),
          ),
        ),
      ),
    );
  }
}
```

# Grid View
## Builder
- Chess like grid using grid view
- Cross Axis Count (Grid Delegate) determines the number of widgets in one row
- Item count determines the total number of widgets
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8),
          itemCount: 64,
          itemBuilder: (content, index) => Container(
            color: Colors.blueGrey,
            margin: const EdgeInsets.all(2),
          ),
        ),
      ),
    );
  }
}
```

# Stack
- Bruh you know what a stack is
- And if you don't, what are you doing?
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.teal,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.teal[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.teal[200],
            )
          ],
        ),
      ),
    );
  }
}
```

# Gesture
- Concepts Covered
    - Gestures
    - Shadow
        - Text Shadow
        - Box Shadow

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Functions
  void singleTap() {
    print("User pressed once!");
  }

  void doubleTab() {
    print("User pressed twice in quick successions!");
  }

  void longPress() {
    print("LET IT GOOOOOOOOOOOOOOOOOOOo");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: GestureDetector(
          onDoubleTap: doubleTab,
          onTap: singleTap,
          onLongPress: longPress,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                #                    spreadRadius: 2,
                  )
                ],
                color: Colors.teal,
                borderRadius: BorderRadius.circular(50),
              ),
              height: 400,
              width: 400,
              child: Center(
                child: Text(
                  "Haskell > C",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: "VictorMono NFM",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(5, 5),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

# Navigation

