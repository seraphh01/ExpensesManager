import 'package:flutter/material.dart';
import 'package:flutter_debugging/new_transaction.dart';
import 'package:flutter_debugging/transaction.dart';
import 'package:flutter_debugging/transaction_list.dart';

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
          primarySwatch: Colors.purple,
          fontFamily: 'NanoSans',
          textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          appBarTheme:
              ThemeData.light().appBarTheme.copyWith(centerTitle: true)),
      home: const MyHomePage(title: 'Expenses manager'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void _showAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return NewTransactionForm(addTransaction: addTransaction);
        });
  }

  void addTransaction(Transaction transaction) {
    setState(() {
      transactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                _showAddNewTransaction(context);
              },
              icon: Icon(Icons.abc_sharp))
        ],
      ),
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
          TransactionsListView(transactions: transactions)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddNewTransaction(context);
        },
        child: Icon(Icons.abc_outlined),
      ),
    );
  }
}
