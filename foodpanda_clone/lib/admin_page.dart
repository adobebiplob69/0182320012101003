import 'package:flutter/material.dart';
import 'restaurant_page.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70), title: const Text("Admin")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(hintText: "Restaurant Name"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                RestaurantData.restaurants.add(nameCtrl.text);
              });
              nameCtrl.clear();
            },
            child: const Text("Add Restaurant"),
          ),
        ],
      ),
    );
  }
}
