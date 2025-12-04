import 'dart:io';

void main() {
  print("Enter first number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Before sawpping: num1 = $num1 num2=$num2");

  int x = num2;
  num2 = num1;
  num1 = x;

  print("After sawpping: num1 = $num1 num2=$num2");
}