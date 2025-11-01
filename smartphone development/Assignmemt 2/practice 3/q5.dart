import 'dart:math';
import 'dart:io';

void function(double r) {
  double calValue = pi * r * r;

  print("Area of a circle: $calValue");
}

void main() {
  print("Enter the value of 'r': ");
  double r = double.parse(stdin.readLineSync()!);

  function(r);
}