import 'package:flutter/material.dart';
import './widgets/userTransactions.dart';

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
        body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          //decoration:
          //    BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 20),
                  child: Card(
                    child: Container(
                      child: Text('This is a text from card inside container'),
                      padding: EdgeInsets.all(10),
                    ),
                    color: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.red,
                  ),
                ),
                UserTransactions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
