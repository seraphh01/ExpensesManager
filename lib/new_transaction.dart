import 'package:flutter/material.dart';
import 'package:flutter_debugging/transaction.dart';

class NewTransactionForm extends StatefulWidget {
  final Function(Transaction) addTransaction;

  NewTransactionForm({Key? key, required this.addTransaction})
      : super(key: key);

  @override
  State<NewTransactionForm> createState() => _NewTransactionFormState();
}

class _NewTransactionFormState extends State<NewTransactionForm> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

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
                  decoration: const InputDecoration(label: Text("Title")),
                  keyboardType: TextInputType.text,
                  onSubmitted: (_) => submitAddTransaction()),
              TextField(
                  controller: amountController,
                  decoration: const InputDecoration(label: Text("Amount")),
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submitAddTransaction()),
              TextButton(
                  onPressed: submitAddTransaction,
                  child: const Text("Add transaction"))
            ],
          ),
        ),
      ),
    );
  }

  void submitAddTransaction() {
    try {
      final title = titleController.text;
      final amount = double.parse(amountController.text);

      if (title.isEmpty || amount <= 0) {
        return;
      }

      var newTransaction = Transaction(
          id: "id",
          title: titleController.text,
          amount: double.parse(amountController.text),
          dateTime: DateTime.now());
      widget.addTransaction(newTransaction);
      Navigator.of(context).pop();
    } catch (ex) {
      return;
    }
  }
}
