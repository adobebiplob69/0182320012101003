import 'dart:io';

main() {
  print("Enter the number of people");
  int people = int.parse(stdin.readLineSync()!);
  print("Enter the number of amount");
  int amount = int.parse(stdin.readLineSync()!);

  double formula = (amount / people);

  print("Split amount of bill: $formula");
}