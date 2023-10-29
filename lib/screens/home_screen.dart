import 'package:flutter/material.dart';
import '../widgets/expense_list.dart'; // Import the ExpenseList widget
import '../models/expense.dart';

class HomeScreen extends StatelessWidget {
  final List<Expense> expenses;

  HomeScreen(this.expenses);

  @override
  Widget build(BuildContext context) {
    return expenses.isEmpty
        ? Column(
            children: <Widget>[
              Text(
                'No expenses added yet!',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Image.asset(
                  'assets/images/waiting.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        : ExpenseList(expenses); // Use the ExpenseList widget
  }
}

