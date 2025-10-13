import 'dart:io';

void main() {
  print("Enter the dividend");
  int dividend = int.parse(stdin.readLineSync()!);
  print("Enter the divisor number");
  int divisor = int.parse(stdin.readLineSync()!);

  int quotient = (dividend ~/ divisor);
  int reminder = (dividend % divisor);

  print("Quotient: $quotient");
  print("Reminder: $reminder");
}