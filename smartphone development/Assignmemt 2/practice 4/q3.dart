import 'dart:io';

void main() {
  print("How many expenses do you want to enter?");
  int n = int.parse(stdin.readLineSync()!);

  List<double> expenses = [];

  for (int i = 0; i < n; i++) {
    print("Enter expense ${i + 1}:");
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
  }

  double total = 0;
  for (double expense in expenses) {
    total += expense;
  }

  print("Total expenses: $total");
}