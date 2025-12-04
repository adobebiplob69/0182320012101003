import 'dart:io';

void main() {
  String friendName = "Shuvon";
  File file = File("myName.txt");

  file.writeAsStringSync(friendName + "\n", mode: FileMode.append);

  print("Friend's name added to hello.txt successfully!");
}