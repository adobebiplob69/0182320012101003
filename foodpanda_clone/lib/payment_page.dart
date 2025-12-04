import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70), title: const Text("Payment")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("Pay with BKash")),
          const SizedBox(height: 15),
          ElevatedButton(onPressed: () {}, child: const Text("Pay with Nagad")),
        ],
      ),
    );
  }
}
