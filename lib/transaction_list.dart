import 'package:flutter/material.dart';
import 'package:flutter_debugging/transaction.dart';
import 'package:intl/intl.dart';

class TransactionsListView extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionsListView({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return transactionCard(context, transactions[index]);
        },
        itemCount: transactions.length,
      ),
    );
  }

  Widget transactionCard(BuildContext context, Transaction transaction) {
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
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 3)),
                child: Text(
                  "\$${transaction.amount.toStringAsFixed(2)}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: Theme.of(context).textTheme.titleMedium,
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
