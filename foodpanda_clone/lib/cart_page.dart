import 'package:flutter/material.dart';
import 'payment_page.dart';

class Cart {
  static List<String> items = [];
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70), title: const Text("Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Cart.items.length,
              itemBuilder: (_, i) => ListTile(
                title: Text(Cart.items[i]),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PaymentPage()));
            },
            child: const Text("Proceed to Payment"),
          )
        ],
      ),
    );
  }
}
