import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final Function _userTransaction;

  final amountInputController = TextEditingController();
  final titleInputController = TextEditingController();

  TransactionForm(this._userTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 10),
        //decoration: BoxDecoration(
        //    border: Border.all(color: Colors.red, width: 2)),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInputController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInputController,
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: FlatButton(
                onPressed: () {
                  _userTransaction(titleInputController.text,
                      double.parse(amountInputController.text));
                },
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
    );
  }
}
