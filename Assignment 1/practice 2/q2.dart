import 'dart:io';

main() {
  while (true) {
    print("Enter a character: ");
    String? ch = stdin.readLineSync()!;

    if ('aeiou'.contains(ch) || 'AEIOU'.contains(ch)) {
      print("Its a Vowel");
    } else {
      print("Its not a Vowel!!");
    }
  }
}