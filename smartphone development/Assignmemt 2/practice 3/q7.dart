import 'dart:io';

int power(int base, int exponent) {
  int result = 1;
  for (int i = 1; i <= exponent; i++) {
    result *= base;
  }
  return result;
}

void main() {
  print("Enter the number:");
  int number = int.parse(stdin.readLineSync()!);

  print("Enter the power:");
  int exponent = int.parse(stdin.readLineSync()!);

  int ans = power(number, exponent);

  print("Answer: $number ^ $exponent = $ans");
}