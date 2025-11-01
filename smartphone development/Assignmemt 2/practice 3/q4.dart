import 'dart:math';
import 'dart:io';

void main() {
  stdout.write("Enter password length: ");
  int length = int.parse(stdin.readLineSync()!);

  String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  String password = '';

  for (int i = 0; i < length; i++) {
    password += chars[Random().nextInt(chars.length)];
  }

  print("\nGenerated Password: $password");
}