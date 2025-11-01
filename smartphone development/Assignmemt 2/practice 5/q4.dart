import 'dart:io';

void main() {
  File sourceFile = File("hello.txt");
  File destinationFile = File("hello_copy.txt");

  if (sourceFile.existsSync()) {
    sourceFile.copySync(destinationFile.path);
    print("File copied successfully to hello_copy.txt");
  } else {
    print("Source file hello.txt does not exist!");
  }
}