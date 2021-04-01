import 'package:flutter/material.dart';
import './transactionCard.dart';
import './transactionsForm.dart';
import '../modules/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  // List Of transactions
  final List<Transactions> transactions = [];

  // ======================= For Testing in initialization =========
  // Transactions(
  //     id: 1, amount: 99.21, date: DateTime.now(), title: "Internet charge"),
  // Transactions(
  //     id: 2, amount: 109.02, date: DateTime.now(), title: "Bank charge"),
  // Transactions(
  //     id: 3, amount: 55.53, date: DateTime.now(), title: "Social charge"),
  // Transactions(
  //     id: 4, amount: 88.22, date: DateTime.now(), title: "Food charge"),
  // ======================= For Testing in initialization =========

  // Methods
  void _addTransaction(String txTitle, double txAmount) {
    setState(() {
      transactions.add(Transactions(
          id: (transactions.length + 1), // Dynamic Index
          amount: txAmount,
          date: DateTime.now(),
          title: txTitle));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionCard(transactions),
      ],
    );
  }
}
