import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses; // recebendo os parâmetro

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
