class Questions {
  static late int quizlistIndex;
  static List quizedList = [
    pythonList,
    flutterList,
    dotNetList,
    mearnList,
    aptitudeLIst,
  ];
  static List<Map<String, dynamic>> aptitudeLIst = [
    {
      "question":
          "If a car travels at a speed of 60 miles per hour, how far will it travel in 5 hours?",
      "options": ["300 miles", "250 miles", "200 miles", "150 miles"],
      "correct": "300 miles"
    },
    {
      "question":
          "If a shirt costs \$20 and is on sale for 25% off, what is the sale price of the shirt?",
      "options": ["\$10", "\$15", "\$18", "\$22.50"],
      "correct": "\$15"
    },
    {
      "question":
          "If the perimeter of a square is 36 inches, what is the length of one side?",
      "options": ["6 inches", "9 inches", "12 inches", "18 inches"],
      "correct": "9 inches"
    },
    {
      "question": "Simplify the expression: 3(x + 4) - 2(2x - 3)",
      "options": ["7x + 10", "x + 5", "5x + 10", "x + 10"],
      "correct": "7x + 10"
    },
    {
      "question": "What is the capital of France?",
      "options": ["Berlin", "Madrid", "Rome", "Paris"],
      "correct": "Paris"
    },
    {
      "question":
          "If a book costs \$15 and you have a 20% off coupon, how much will you save?",
      "options": ["\$2", "\$3", "\$4", "\$5"],
      "correct": "\$3"
    },
    {
      "question": "What is 15% of 80?",
      "options": ["8", "10", "12", "15"],
      "correct": "12"
    },
    {
      "question":
          "If a rectangle has a length of 8 units and a width of 4 units, what is its area?",
      "options": [
        "16 square units",
        "20 square units",
        "32 square units",
        "40 square units"
      ],
      "correct": "32 square units"
    },
    {
      "question": "What is the square root of 144?",
      "options": ["9", "12", "15", "18"],
      "correct": "12"
    },
    {
      "question":
          "If the sum of two numbers is 10, and one of them is 3, what is the other number?",
      "options": ["5", "6", "7", "8"],
      "correct": "7"
    },
  ];
  static List<Map<String, dynamic>> pythonList = [
    {
      "question":
          "What is the output of the following code?\nx = 5\ny = 2\nresult = x / y\nprint(result)",
      "options": ["2.5", "2", "2.0", "2.25"],
      "correct": "2.5"
    },
    {
      "question": "Which of the following is a valid Python variable name?",
      "options": ["123variable", "_variable", "my-variable", "variable!"],
      "correct": "_variable"
    },
    {
      "question": "What does the 'len()' function do in Python?",
      "options": [
        "Converts a string to lowercase",
        "Returns the length of a list or string",
        "Finds the maximum value in a list",
        "Rounds a floating-point number to the nearest integer"
      ],
      "correct": "Returns the length of a list or string"
    },
    {
      "question": "Which of the following is not a valid data type in Python?",
      "options": ["int", "double", "str", "bool"],
      "correct": "double"
    },
    {
      "question": "What is the primary purpose of Python's 'if' statement?",
      "options": [
        "To define a function",
        "To iterate over a sequence",
        "To check a condition and execute code conditionally",
        "To perform mathematical operations"
      ],
      "correct": "To check a condition and execute code conditionally"
    },
    {
      "question": "Which of the following is a mutable data type in Python?",
      "options": ["int", "float", "str", "list"],
      "correct": "list"
    },
    {
      "question": "What is the result of the expression '3 + 2 * 4' in Python?",
      "options": ["20", "15", "11", "14"],
      "correct": "11"
    },
    {
      "question": "What does the 'import' keyword do in Python?",
      "options": [
        "Imports a module or library",
        "Declares a new variable",
        "Prints a message to the console",
        "Exits the program"
      ],
      "correct": "Imports a module or library"
    },
    {
      "question": "What is the purpose of a 'for' loop in Python?",
      "options": [
        "To define a function",
        "To check a condition",
        "To create an infinite loop",
        "To iterate over a sequence of elements"
      ],
      "correct": "To iterate over a sequence of elements"
    },
    {
      "question":
          "What is the output of 'print('Hello, ' + 'world!')' in Python?",
      "options": ["Hello, world!", "Hello world!", "Hello + world!", "Error"],
      "correct": "Hello, world!"
    },
  ];
  static List<Map<String, dynamic>> flutterList = [
    {
      "question": "What is Flutter?",
      "options": [
        "A programming language",
        "A mobile operating system",
        "A UI framework for building natively compiled applications",
        "A text editor"
      ],
      "correct": "A UI framework for building natively compiled applications"
    },
    {
      "question":
          "Which programming language is used for developing Flutter apps?",
      "options": ["Java", "Kotlin", "Dart", "Swift"],
      "correct": "Dart"
    },
    {
      "question": "What is the primary benefit of Flutter?",
      "options": [
        "Cross-platform compatibility",
        "High performance",
        "Ease of learning",
        "Built-in AI capabilities"
      ],
      "correct": "Cross-platform compatibility"
    },
    {
      "question": "What is a widget in Flutter?",
      "options": [
        "A small insect",
        "A graphical user interface component",
        "A mathematical equation",
        "A type of database"
      ],
      "correct": "A graphical user interface component"
    },
    {
      "question": "Which widget is used to create a button in Flutter?",
      "options": ["Container", "Text", "IconButton", "Drawer"],
      "correct": "IconButton"
    },
    {
      "question": "What is the 'BuildContext' in Flutter used for?",
      "options": [
        "Playing audio",
        "Handling user gestures",
        "Managing navigation",
        "Building the widget tree"
      ],
      "correct": "Building the widget tree"
    },
    {
      "question": "What is 'Hot Reload' in Flutter?",
      "options": [
        "A spicy dish",
        "A debugging tool",
        "A feature that allows you to instantly see the effects of code changes without restarting the app",
        "A code analysis tool"
      ],
      "correct":
          "A feature that allows you to instantly see the effects of code changes without restarting the app"
    },
    {
      "question": "Which package is used for navigation in Flutter?",
      "options": [
        "flutter_navigation",
        "route_manager",
        "navigator_flutter",
        "flutter/material.dart"
      ],
      "correct": "flutter/material.dart"
    },
    {
      "question": "What is 'StatefulWidget' in Flutter used for?",
      "options": [
        "Storing user data",
        "Managing app state that can change over time",
        "Creating animations",
        "Displaying images"
      ],
      "correct": "Managing app state that can change over time"
    },
    {
      "question":
          "Which Flutter method is called when a widget is first inserted into the tree?",
      "options": ["initState", "build", "dispose", "insertWidget"],
      "correct": "initState"
    },
  ];
  static List<Map<String, dynamic>> dotNetList = [
    {
      "question": "What is .NET?",
      "options": [
        "A programming language",
        "A web browser",
        "A software framework",
        "An operating system"
      ],
      "correct": "A software framework"
    },
    {
      "question": "Which programming languages can be used with .NET?",
      "options": [
        "Python and Java",
        "C++ and Ruby",
        "C# and F#",
        "JavaScript and PHP"
      ],
      "correct": "C# and F#"
    },
    {
      "question":
          "What is the primary purpose of the Common Language Runtime (CLR) in .NET?",
      "options": [
        "To compile code into machine language",
        "To manage memory and provide garbage collection",
        "To create graphical user interfaces",
        "To send and receive data over the internet"
      ],
      "correct": "To manage memory and provide garbage collection"
    },
    {
      "question":
          "Which IDE (Integrated Development Environment) is commonly used for .NET development?",
      "options": ["Visual Studio", "Eclipse", "NetBeans", "Xcode"],
      "correct": "Visual Studio"
    },
    {
      "question": "What is ASP.NET used for?",
      "options": [
        "Machine learning",
        "Game development",
        "Web application development",
        "Database management"
      ],
      "correct": "Web application development"
    },
    {
      "question":
          "What is the main component of the .NET Framework for building user interfaces?",
      "options": [
        "Common Language Runtime (CLR)",
        "Windows Forms",
        "ASP.NET",
        "ADO.NET"
      ],
      "correct": "Windows Forms"
    },
    {
      "question":
          "Which of the following is a commonly used .NET database technology?",
      "options": ["MySQL", "Oracle", "SQL Server", "MongoDB"],
      "correct": "SQL Server"
    },
    {
      "question":
          "What is the purpose of the Global Assembly Cache (GAC) in .NET?",
      "options": [
        "To store global variables",
        "To manage software licenses",
        "To store shared assemblies for use by multiple applications",
        "To store backup copies of files"
      ],
      "correct": "To store shared assemblies for use by multiple applications"
    },
    {
      "question":
          "Which .NET technology is used for creating and consuming web services?",
      "options": [
        "WPF (Windows Presentation Foundation)",
        "WCF (Windows Communication Foundation)",
        "WinForms (Windows Forms)",
        "ASP.NET MVC (Model-View-Controller)"
      ],
      "correct": "WCF (Windows Communication Foundation)"
    },
    {
      "question": "What is C#?",
      "options": [
        "A database management system",
        "A web browser",
        "A programming language",
        "A cloud computing service"
      ],
      "correct": "A programming language"
    },
  ];
  static List<Map<String, dynamic>> mearnList = [
    {
      "question": "What does 'MEAN' stand for in MEAN Stack?",
      "options": [
        "Middle-End-All-New",
        "MongoDB, Express, Angular, Node.js",
        "Multi-Environment App Network",
        "Managed Execution and Networking"
      ],
      "correct": "MongoDB, Express, Angular, Node.js"
    },
    {
      "question": "What does 'MERN' stand for in MERN Stack?",
      "options": [
        "Middle-End-All-New",
        "MongoDB, Express, React, Node.js",
        "Multi-Environment App Network",
        "Managed Execution and Networking"
      ],
      "correct": "MongoDB, Express, React, Node.js"
    },
    {
      "question":
          "Which component of the MEAN stack is used for building the user interface?",
      "options": ["MongoDB", "Express", "Angular", "Node.js"],
      "correct": "Angular"
    },
    {
      "question":
          "Which component of the MERN stack is used for building the user interface?",
      "options": ["MongoDB", "Express", "React", "Node.js"],
      "correct": "React"
    },
    {
      "question": "What is MongoDB in the MEAN stack?",
      "options": [
        "A front-end framework",
        "A NoSQL database",
        "A server-side framework",
        "A version control system"
      ],
      "correct": "A NoSQL database"
    },
    {
      "question": "What is MongoDB in the MERN stack?",
      "options": [
        "A front-end framework",
        "A NoSQL database",
        "A server-side framework",
        "A version control system"
      ],
      "correct": "A NoSQL database"
    },
    {
      "question":
          "Which part of the MEAN stack is used for server-side scripting and routing?",
      "options": ["MongoDB", "Express", "Angular", "Node.js"],
      "correct": "Express"
    },
    {
      "question":
          "Which part of the MERN stack is used for server-side scripting and routing?",
      "options": ["MongoDB", "Express", "React", "Node.js"],
      "correct": "Express"
    },
    {
      "question": "What is Node.js in the MEAN stack?",
      "options": [
        "A front-end framework",
        "A NoSQL database",
        "A server-side framework",
        "A runtime environment for executing JavaScript on the server"
      ],
      "correct": "A runtime environment for executing JavaScript on the server"
    },
    {
      "question": "What is Node.js in the MERN stack?",
      "options": [
        "A front-end framework",
        "A NoSQL database",
        "A server-side framework",
        "A runtime environment for executing JavaScript on the server"
      ],
      "correct": "A runtime environment for executing JavaScript on the server"
    },
  ];
}
