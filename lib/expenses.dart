import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/models/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> expenses = [
    Expense(
      category: Category.work,
      title: 'Course',
      amount: 19.99,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.food,
      title: 'Food',
      amount: 19.99,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.leisure,
      title: 'Books',
      amount: 19.99,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.travel,
      title: 'Bus',
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];

  void _openAddExpenseModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return const NewExpense();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expenses'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseModal,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text("The Chart ..."),
          Expanded(
            child: ExpensesList(expenses: expenses),
          ),
        ],
      ),
    );
  }
}
