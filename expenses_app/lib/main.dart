import 'package:flutter/material.dart';

void main() {
  // Calling Run App Function to draw the widget into the screen
  runApp(ExpensesApp());
}

// Main App With STATE FULL Widget
class ExpensesApp extends StatefulWidget {
  // Connecting this app with its state
  @override
  State<StatefulWidget> createState() {
    return _ExpensesAppState();
  }
}

// application State
class _ExpensesAppState extends State<ExpensesApp> {
  // Build Function that responsible for controlling all screen pixels
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expenses '),
          backgroundColor: Colors.red,
        ),
        body: Text("This Body"),
      ),
    );
  }
}
