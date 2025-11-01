import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('My name is Biplob');
  print('File written.');
  print(file);
}