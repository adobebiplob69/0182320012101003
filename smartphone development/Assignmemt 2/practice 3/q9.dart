import 'dart:io';

num maxNumber(num a, num b, num c) {
  num max = a;

  if (b > max) {
    max = b;
  }
  if (c > max) {
    max = c;
  }

  return max;
}

void main() {
  print("Enter first number:");
  num num1 = num.parse(stdin.readLineSync()!);

  print("Enter second number:");
  num num2 = num.parse(stdin.readLineSync()!);

  print("Enter third number:");
  num num3 = num.parse(stdin.readLineSync()!);

  num largest = maxNumber(num1, num2, num3);
  print("The largest number is $largest");
}