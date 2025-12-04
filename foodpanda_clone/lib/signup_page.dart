import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: email, decoration: const InputDecoration(hintText: "Email")),
            const SizedBox(height: 15),
            TextField(controller: pass, obscureText: true, decoration: const InputDecoration(hintText: "Password")),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email.text,
                  password: pass.text,
                );
                Navigator.pop(context);
              },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
