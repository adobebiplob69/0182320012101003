import 'dart:io';

void printEvenNumbers(int start, int end) {
  print("\nEven numbers between $start and $end are:");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  stdout.write("Enter first interval: ");
  int firstNum = int.parse(stdin.readLineSync()!);

  stdout.write("Enter last interval: ");
  int secondNum = int.parse(stdin.readLineSync()!);

  printEvenNumbers(firstNum, secondNum);
}