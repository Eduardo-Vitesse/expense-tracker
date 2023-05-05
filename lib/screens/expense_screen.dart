import "package:flutter/material.dart";

import "package:expense_tracker/widget/expenses_list.dart";
import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widget/new_expense.dart";

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter course",
      amount: 99.19,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Cinema",
      amount: 15.17,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
