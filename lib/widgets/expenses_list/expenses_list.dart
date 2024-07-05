import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenseList, required this.onRemoveExpense});

  final void Function(Expense expenseToRemove) onRemoveExpense;

  final List<Expense> expenseList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: expenseList.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: ValueKey(
                expenseList[index],
              ),
              onDismissed: (direction) {
                onRemoveExpense(
                  expenseList[index],
                );
              },
              child: ExpenseItem(
                expenseList[index],
              ),
            );
          }),
    );
  }
}
