import 'dart:io';

void main() {
  print("Enter a number as a string: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int number = int.parse(input);

    print("The integer value is: $number");
  } else {
    print("No input provided!");
  }
}

