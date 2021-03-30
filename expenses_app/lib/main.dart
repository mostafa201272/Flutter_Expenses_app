import 'package:flutter/material.dart';
import './transactions.dart';
import './transactionCard.dart';

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
  // List Of transactions
  final List<Transactions> transactions = [
    Transactions(
        id: 1, amount: 99.21, date: DateTime.now(), title: "Internet charge"),
    Transactions(
        id: 2, amount: 109.02, date: DateTime.now(), title: "Bank charge"),
    Transactions(
        id: 3, amount: 55.53, date: DateTime.now(), title: "Social charge"),
    Transactions(
        id: 4, amount: 88.22, date: DateTime.now(), title: "Food charge"),
  ];

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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 20),
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
              Card(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 10),
                  //decoration: BoxDecoration(
                  //    border: Border.all(color: Colors.red, width: 2)),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: FlatButton(
                          onPressed: () => 0,
                          child: Text(
                            'Add Transaction',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: transactions.map((tx) {
                  return TransactionCard(
                    id: tx.id,
                    amount: tx.amount,
                    title: tx.title,
                    date: tx.date,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
