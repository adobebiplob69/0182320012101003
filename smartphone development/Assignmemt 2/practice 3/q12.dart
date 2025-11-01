double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  print("Area with default values: ${calculateArea()}");
  print("Area with length 5: ${calculateArea(length: 5)}");
  print("Area with width 4: ${calculateArea(width: 4)}");
  print(
    "Area with length 5 and width 4: ${calculateArea(length: 5, width: 4)}",
  );
}