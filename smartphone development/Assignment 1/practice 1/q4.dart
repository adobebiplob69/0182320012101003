import 'dart:io';

void main() {
  print("Enter the value of p: ");
  int p = int.parse(stdin.readLineSync()!);

  print("Enter the value of t: ");
  int t = int.parse(stdin.readLineSync()!);

  print("Enter the value of r: ");
  int r = int.parse(stdin.readLineSync()!);

  double formula = (p * t * r) / 100;

  print("Output: $formula");
}

//cd "C:\Users\mashr\OneDrive\Desktop\Smartphone Development\Assignment 1\Practice 1"
//dart run Q4.dart