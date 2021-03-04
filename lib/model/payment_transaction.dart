import 'package:flutter/foundation.dart';
class PaymentTransaction {
  final String title;
  final String settled;
  final DateTime date;
  final double amount;

  PaymentTransaction(this.title, this.settled, this.date, this.amount);


}