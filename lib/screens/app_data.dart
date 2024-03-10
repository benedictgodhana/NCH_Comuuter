import 'package:flutter/material.dart';


class Route {
  final String id;
  final String name;

  Route({
    required this.id,
    required this.name,
  });
}

class Passenger {
  final String id;
  final String name;

  Passenger({
    required this.id,
    required this.name,
  });
}


class Transaction {
  final String id;
  final DateTime timestamp;
  final Route route;
  final Passenger passenger;
  final double amount;

  Transaction({
    required this.id,
    required this.timestamp,
    required this.route,
    required this.passenger,
    required this.amount,
  });
}


class AppData extends ChangeNotifier {
  List<Transaction> transactions = [];

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
    notifyListeners();
  }

  double getTotalAmount() {
    return transactions.fold(0.0, (acc, transaction) => acc + transaction.amount);
  }

  Map<String, int> getPassengersPerRoute() {
    Map<String, int> passengersPerRoute = {};
    for (var transaction in transactions) {
      final routeId = transaction.route.id;
      passengersPerRoute.update(routeId, (value) => value + 1, ifAbsent: () => 1);
    }
    return passengersPerRoute;
  }
}
