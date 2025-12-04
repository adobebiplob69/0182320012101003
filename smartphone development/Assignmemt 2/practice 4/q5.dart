void main() {
  Map<String, dynamic> person = {
    "name": "Ali",
    "address": "lamabazar",
    "age": 22,
    "country": "Bangladesh",
  };

  // Update country
  person["country"] = "Bangladesh";

  person.forEach((key, value) {
    print("$key: $value");
  });
}