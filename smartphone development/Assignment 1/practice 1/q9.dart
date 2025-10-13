import 'dart:io';

void main() {
  print("Enter a String with space: ");
  String s = stdin.readLineSync()!;

  String noSpace = s.replaceAll(" ", "");

  print("Without spaces: $noSpace");
}