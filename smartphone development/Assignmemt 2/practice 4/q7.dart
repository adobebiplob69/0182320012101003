void main() {
  Map<String, String> contacts = {
    "sejan": "017XXXXXXXX",
    "Mash": "018XXXXXXXX",
    "Jihan": "019XXXXXXXX",
    "Biplob": "0167",
    "Sami": "015XXXXXXXX",
  };

  var keysWithPhoneLength4 = contacts.entries
      .where((entry) => entry.value.length == 4)
      .map((entry) => entry.key);

  print("Keys with phone number length 4:");
  for (var key in keysWithPhoneLength4) {
    print(key);
  }
}