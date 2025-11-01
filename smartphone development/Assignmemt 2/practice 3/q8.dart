num add(num a, num b) {
  return a + b;
}

void main() {
  print("Enter first number:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int num2 = int.parse(stdin.readLineSync()!);

  num sum = add(num1, num2);
  print("The sum of $num1 and $num2 is $sum");
}