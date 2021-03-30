import 'package:flutter/foundation.dart';

class Transactions {
  final int id;
  final String title;
  final DateTime date;
  final double amount;

  Transactions({
    @required this.id,
    @required this.amount,
    @required this.date,
    @required this.title,
  });
}
