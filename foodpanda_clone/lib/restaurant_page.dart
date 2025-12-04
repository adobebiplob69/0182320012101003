import 'package:flutter/material.dart';
import 'restaurant_details.dart';

class RestaurantData {
  static List<String> restaurants = ["Pizza Hut", "KFC", "Burger King"];
}

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70), title: const Text("Restaurants")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: RestaurantData.restaurants.length,
        itemBuilder: (_, i) => GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => RestaurantDetails(name: RestaurantData.restaurants[i])));
          },
          child: Card(child: Center(child: Text(RestaurantData.restaurants[i]))),
        ),
      ),
    );
  }
}
