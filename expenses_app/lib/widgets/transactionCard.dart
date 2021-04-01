import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../modules/transactions.dart';

class TransactionCard extends StatelessWidget {
  // List<Transactions> transactions;
  final List<Transactions> transactions;

  // Constractor
  TransactionCard(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Container(
          width: double.infinity,
          child: Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    tx.id.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    tx.amount.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 5, left: 5, bottom: 2.5, right: 5),
                        padding: EdgeInsets.all(2.5),
                        child: Text(
                          tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 2.5, left: 5, bottom: 5, right: 5),
                        padding: EdgeInsets.all(2.5),
                        child: Text(
                          DateFormat('dd LLL, yyyy').format(tx.date),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Text('Icon'),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
