void createUser(String name, int age, {bool isActive = true}) {
  print("User Details:");
  print("Name: $name");
  print("Age: $age");
  print("Active: $isActive");
}

void main() {
  createUser("Ali", 25, isActive: false);

  print("");

  createUser("Mashrafi", 22);
}