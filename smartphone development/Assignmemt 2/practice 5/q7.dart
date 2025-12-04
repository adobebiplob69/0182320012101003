import 'dart:io';

void main() {
  File file = File("students.csv");

  file.writeAsStringSync("Name,Age,Address\n");

  for (int i = 0; i < 3; i++) {
    stdout.write("Enter name of student ${i + 1}: ");
    String name = stdin.readLineSync()!.trim();

    stdout.write("Enter age of student ${i + 1}: ");
    String age = stdin.readLineSync()!.trim();

    stdout.write("Enter address of student ${i + 1}: ");
    String address = stdin.readLineSync()!.trim();

    file.writeAsStringSync("$name,$age,$address\n", mode: FileMode.append);
  }

  print("\nCSV file written successfully!\n");

  // Read the CSV file
  print("Reading data from students.csv:");
  String contents = file.readAsStringSync();
  print(contents);
}