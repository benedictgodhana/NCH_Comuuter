import 'package:flutter/material.dart';
import 'side_menu.dart'; // Adjust the path based on your directory structure
import 'package:login_signup/theme/theme.dart';

// Define your light color scheme

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Builder(
          builder: (BuildContext context) {
            return AppBar(
              title: const Text('Transaction History'),
              backgroundColor: lightColorScheme.primary,
              actions: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                // Share icon at the end of the app bar
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    // Implement the action for sharing
                  },
                ),
              ],
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Sidemenu(), // Use the Sidemenu widget here
      ),
      body: TransactionList(), // Display transaction list
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with your actual transaction data
    List<Transaction> transactions = [
      Transaction(id: 1, amount: 100.0, date: DateTime.now()),
      Transaction(id: 2, amount: 150.0, date: DateTime.now()),
      Transaction(id: 3, amount: 200.0, date: DateTime.now()),
      // Add more transactions as needed
    ];

    // Calculate total amount collected
    double totalAmount = transactions.fold(0, (previous, current) => previous + current.amount);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          DataTable(
            headingTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            dataTextStyle: TextStyle(
              fontSize: 14,
            ),
            columns: [
              DataColumn(label: Text('Transaction ID')),
              DataColumn(label: Text('Amount')),
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Actions')), // Added column for buttons
            ],
            rows: transactions.map((transaction) {
              return DataRow(cells: [
                DataCell(Text('ID: ${transaction.id}')),
                DataCell(Text('\$${transaction.amount.toStringAsFixed(2)}')),
                DataCell(Text('${transaction.date.toString().substring(0, 10)}')), // Display only date
                DataCell(
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue), // Edit icon with blue color
                        onPressed: () {
                          // Handle edit action
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red), // Delete icon with red color
                        onPressed: () {
                          // Handle delete action
                        },
                      ),
                    ],
                  ),
                ),
              ]);
            }).toList(),
          ),
          SizedBox(height: 10), // Add spacing between table and total amount
          Text(
            'Total Amount Collected: \$${totalAmount.toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class Transaction {
  final int id;
  final double amount;
  final DateTime date;

  Transaction({required this.id, required this.amount, required this.date});
}
