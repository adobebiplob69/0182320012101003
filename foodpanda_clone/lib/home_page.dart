import 'package:flutter/material.dart';
import 'restaurant_page.dart';
import 'cart_page.dart';
import 'admin_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final pages = const [
    RestaurantPage(),
    CartPage(),
    AdminPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: const Color(0xFFE21B70),
        onTap: (i) => setState(() => index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.admin_panel_settings), label: "Admin"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
