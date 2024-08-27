<style>
*{
    font-family: VictorMono NFM;
    font-weight: Bold;
}
</style>

<!-- mtoc-start -->

* [Hello World](#hello-world)
* [Variables](#variables)
* [Math](#math)
* [Comparison Operators](#comparison-operators)
* [Logical Operators](#logical-operators)
* [If Else](#if-else)
* [Switches](#switches)
* [Loops](#loops)
* [Functions](#functions)
* [Data Structures](#data-structures)
* [Basic About Me page](#basic-about-me-page)
* [Concepts Covered](#concepts-covered)
* [OUTLINE](#outline)
* [Expanded](#expanded)
* [List View](#list-view)
* [Vertical Scrolling](#vertical-scrolling)
* [Horizontal Scrolling](#horizontal-scrolling)
* [List View Builder](#list-view-builder)
  * [Count from 0 to (n-1)](#count-from-0-to-n-1)
  * [Using a list data type](#using-a-list-data-type)
* [Grid View](#grid-view)
* [Builder](#builder)
* [Stack](#stack)
* [Gesture](#gesture)
* [Navigation](#navigation)
* [Simple 2 page nav](#simple-2-page-nav)
  * [main.dart](#maindart)
  * [first.dart](#firstdart)
  * [second.dart](#seconddart)
* [Routing](#routing)
* [Drawer](#drawer)
* [Project](#project)
  * [Main.dart](#maindart-1)
  * [First Page](#first-page)
  * [Home Page](#home-page)
  * [Settings Page](#settings-page)
* [Bottom Navigation Bar](#bottom-navigation-bar)
* [Project](#project-1)
  * [Main.dart](#maindart-2)
  * [First.dart](#firstdart-1)
  * [Home.dart](#homedart)
  * [Profile.dart](#profiledart)
  * [Settings.dart](#settingsdart)
* [Stateful Widget](#stateful-widget)
* [Project](#project-2)
  * [Main.dart](#maindart-3)
  * [Button_Press.dart](#button_pressdart)

<!-- mtoc-end -->

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
### Count from 0 to (n-1)
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
## Simple 2 page nav
- Project Directory
    - libs/main.dart
    - libs/pages/first.dart
    - libs/pages/second.dart

### main.dart
```dart
import 'package:flutter/material.dart';
import 'package:something/pages/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
```

### first.dart
```dart
import 'package:flutter/material.dart';
import 'package:something/pages/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "First Page",
            style: TextStyle(
              fontFamily: "VictorMono NFM",
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
            child: Text(
              "Go To 2nd Page",
              style: TextStyle(
                color: Colors.teal[900],
                fontFamily: "VictorMono NFM",
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
### second.dart
```dart
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_double_arrow_left),
          ),
          title: const Text(
            "Second Page",
            style: TextStyle(
              fontFamily: "VictorMono NFM",
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
```

## Routing
- Useful to navigate through multiple pages
- Add routes to the Material App
```dart
routes: {
  '/secondpage': (context) => SecondPage(),
},
```
- Change the function performed on clicking the elevated button from Navigator.push to Navigator.pushName
```dart
onPressed: () {
  Navigator.pushNamed(context, '/secondpage');
},
```

# Drawer
- Note: By default, this application will not close the drawer once we have clicked on home or settings which can be clearly seen when we switch back to the first page
- To prevent this, we do Navigator.pop(context); to remove whatever is on the screen on top currently i.e. the drawer

## Project
- lib/main.dart
- lib/pages/first.dart
- lib/pages/home_page.dart
- lib/pages/settings_page.dart

### Main.dart
```dart
import 'package:flutter/material.dart';
import 'package:something/pages/first.dart';
import 'package:something/pages/home_page.dart';
import 'package:something/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/settingspage': (context) => SettingsPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
```

### First Page
```dart
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(
            fontFamily: "VictorMono NFM",
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.route,
                size: 64,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
```
### Home Page
```dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            fontFamily: "VictorMono NFM",
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
        foregroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
        ),
      ),
    );
  }
}
```
### Settings Page
```dart
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings Page',
          style: TextStyle(
            fontFamily: "VictorMono NFM",
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
        foregroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
        ),
      ),
    );
  }
}
```

# Bottom Navigation Bar
## Project
- lib/main.dart
- lib/pages/first.dart
- lib/pages/home_page.dart
- lib/pages/settings_page.dart
### Main.dart
```dart
import 'package:flutter/material.dart';
import 'package:something/pages/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
```
### First.dart
```dart
import 'package:flutter/material.dart';
import 'package:something/pages/home_page.dart';
import 'package:something/pages/profile_page.dart';
import 'package:something/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void _navigateBottomBar(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  int _selected_index = 0;

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: _pages[_selected_index],
      appBar: AppBar(
        title: Text("1st Page"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.grey[400],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex: _selected_index,
        backgroundColor: Colors.grey[900],
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.teal,
        selectedLabelStyle: TextStyle(
          fontFamily: "VictorMono NFM",
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "VictorMono NFM",
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
```
### Home.dart
```dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: "VictorMono NFM",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```
### Profile.dart
```dart
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Text(
          "Profile Page",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: "VictorMono NFM",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```
### Settings.dart
```dart
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Text(
          "Settings Page",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: "VictorMono NFM",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```

# Stateful Widget
## Project
- lib/main.dart
- lib/pages/button_press.dart

### Main.dart
```dart
import 'package:flutter/material.dart';
import 'package:something/pages/button_press.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonPress(),
      debugShowCheckedModeBanner: false,
    );
  }
}
```
### Button_Press.dart
```dart
import 'package:flutter/material.dart';

class ButtonPress extends StatefulWidget {
  const ButtonPress({super.key});

  @override
  State<ButtonPress> createState() => _ButtonPressState();
}

class _ButtonPressState extends State<ButtonPress> {
  int _count = 0;

  void update_count() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Number of times the button has been pressed:",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "VictorMono NFM",
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(""),
            Text(
              _count.toString(),
              style: TextStyle(
                fontSize: 40,
                fontFamily: "VictorMono NFM",
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(""),
            Text(""),
            Text(""),
            GestureDetector(
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: 64,
              ),
              onTap: update_count,
            )
          ],
        ),
      ),
    );
  }
}
```
