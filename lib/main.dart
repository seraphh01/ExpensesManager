import 'package:flutter/material.dart';
import 'package:flutter_debugging/transaction.dart';
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
      home: MyHomePage(title: 'Expenses manages'),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
  final String title;

  MyHomePage({required this.title});

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
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Card(
              elevation: 10,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextField(
                        decoration: InputDecoration(label: Text("Title"))),
                    const TextField(
                      decoration: InputDecoration(label: Text("Amount")),
                    ),
                    TextButton(onPressed: () {}, child: Text("Add transaction"))
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: SingleChildScrollView(
              child: Column(
                children: transactions.map((e) => transactionCard(e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget transactionCard(Transaction transaction) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3)),
                child: Text(
                  "\$${transaction.amount}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.green),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(DateFormat.yMEd().format(transaction.dateTime),
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
