import 'dart:io';

main() {
  print("Enter First Name: ");
  String? Fname = stdin.readLineSync();

  print("Enter Last Name: ");
  String? Lname = stdin.readLineSync();

  String concate = Fname! + ' ' + Lname!;
  print("Full name is : $concate");
}