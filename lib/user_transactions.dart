import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debugging/new_transaction.dart';
import 'package:flutter_debugging/transaction.dart';
import 'package:flutter_debugging/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1",
        title: "Transaction 1",
        amount: 99.99,
        dateTime: DateTime.now()),
    Transaction(
        id: "t2", title: "Trans 2", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t3", title: "Trans 3", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: "t4", title: "Trans 4", amount: 99.99, dateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          NewTransactionForm(
            addTransaction: addTransaction,
          ),
          TransactionsListView(
            transactions: transactions,
          )
        ],
      ),
    );
  }

  void addTransaction(Transaction transaction) {
    setState(() {
      transactions.add(transaction);
    });
  }
}
