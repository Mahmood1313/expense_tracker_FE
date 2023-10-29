import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  ExpenseItem(this.expense);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text('\$${expense.amount.toStringAsFixed(2)}'),
            ),
          ),
        ),
        title: Text(
          expense.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // Add more details if needed
      ),
    );
  }
}

