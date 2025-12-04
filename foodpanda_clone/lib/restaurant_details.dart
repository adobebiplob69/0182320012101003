import 'package:flutter/material.dart';
import 'cart_page.dart';

class RestaurantDetails extends StatefulWidget {
  final String name;
  const RestaurantDetails({super.key, required this.name});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  int qty = 1;
  int price = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70), title: Text(widget.name)),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text("Price: ৳$price"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {
                if (qty > 1) setState(() => qty--);
              }, icon: const Icon(Icons.remove)),
              Text("$qty"),
              IconButton(onPressed: () => setState(() => qty++), icon: const Icon(Icons.add)),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Cart.items.add("${widget.name} x$qty");
              Navigator.pop(context);
            },
            child: const Text("Add to Cart"),
          )
        ],
      ),
    );
  }
}
