import 'dart:io';

void main() {
  print("Enter the number for multiplication table: ");
  int num = int.parse(stdin.readLineSync()!);

  print("Multiplication table of $num is:");
  for (int i = 1; i <= num; i++) {
    print("$num X $i=${num * i}");
  }
}