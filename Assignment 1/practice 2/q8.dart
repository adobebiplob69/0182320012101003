import 'dart:io';

void main() {
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose operation (+, -, *, /): ");
  String? op = stdin.readLineSync();

  double result;

  if (op == '+') {
    result = num1 + num2;
    print("Result: $num1 + $num2 = $result");
  } else if (op == '-') {
    result = num1 - num2;
    print("Result: $num1 - $num2 = $result");
  } else if (op == '*') {
    result = num1 * num2;
    print("Result: $num1 * $num2 = $result");
  } else if (op == '/') {
    if (num2 == 0) {
      print("Error: Division by zero is not allowed!");
      return;
    }
    result = num1 / num2;
    print("Result: $num1 / $num2 = $result");
  } else {
    print("Invalid operation!");
  }
}