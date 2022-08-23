import 'package:flutter/material.dart';
import 'package:flutter_debugging/new_transaction.dart';
import 'package:flutter_debugging/transaction.dart';
import 'package:flutter_debugging/transaction_list.dart';
import 'package:flutter_debugging/user_transactions.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expenses manager'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Card(
              elevation: 10,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text('CHART!'),
              ),
            ),
          ),
          const UserTransactions()
        ],
      ),
    );
  }
}
