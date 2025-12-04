import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFE21B70),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login",
                style: TextStyle(fontSize: 32, color: Colors.white)),
            const SizedBox(height: 30),
            TextField(controller: email, decoration: const InputDecoration(filled: true, fillColor: Colors.white, hintText: "Email")),
            const SizedBox(height: 15),
            TextField(controller: pass, obscureText: true, decoration: const InputDecoration(filled: true, fillColor: Colors.white, hintText: "Password")),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email.text,
                  password: pass.text,
                );
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignupPage()));
              },
              child: const Text("Create Account",
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
