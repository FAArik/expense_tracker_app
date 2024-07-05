import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem(this.expense, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        tileColor: Colors.green[200],
        splashColor: Colors.green[300],
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue[300],
          child: Text('\$${expense.amount.toStringAsFixed(2)}'),
        ),
        title: Text(
          expense.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            Text(expense.formatedDate),
            const Spacer(),
            Icon(
              categoryIcons[expense.category],
            ),
          ],
        ),
        onTap: () {},
        onLongPress: () {},
        style: ListTileStyle.list,
      ),
    );
  }
}

class DateFormat {}
