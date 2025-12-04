import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int square = number * number;
  print("The square number is: $square");
}