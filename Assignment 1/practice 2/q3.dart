import 'dart:io';

void main() {
  while (true) {
    print("Enter a number");
    int num = int.parse(stdin.readLineSync()!);

    if (num < 0) {
      print("Its a negative number");
    } else if (num == 0) {
      print("Its Zero");
    } else if (num > 0) {
      print("Its a Positive Number");
    } else {
      print("Invalid input!!");
    }
  }
}