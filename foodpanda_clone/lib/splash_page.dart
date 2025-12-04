import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE21B70),
      body: Center(
        child: Text("FoodPanda",
            style: TextStyle(fontSize: 36, color: Colors.white)),
      ),
    );
  }
}
