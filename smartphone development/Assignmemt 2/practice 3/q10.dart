import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  if (isEven(num)) {
    print("$num is even.");
  } else {
    print("$num is odd.");
  }
}