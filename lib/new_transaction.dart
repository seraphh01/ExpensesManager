import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_debugging/transaction.dart';

class NewTransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function(Transaction) addTransaction;

  NewTransactionForm({Key? key, required this.addTransaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Card(
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                  controller: titleController,
                  decoration: const InputDecoration(label: Text("Title"))),
              TextField(
                controller: amountController,
                decoration: const InputDecoration(label: Text("Amount")),
              ),
              TextButton(
                  onPressed: () {
                    var newTransaction = Transaction(
                        id: "id",
                        title: titleController.text,
                        amount: double.parse(amountController.text),
                        dateTime: DateTime.now());

                    addTransaction(newTransaction);
                  },
                  child: const Text("Add transaction"))
            ],
          ),
        ),
      ),
    );
  }
}
