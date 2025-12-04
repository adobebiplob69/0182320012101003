import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFE21B70), title: const Text("Profile")),
      body: Center(
        child: Column(
          children: [
            const Icon(Icons.person, size: 100),
            Text(user?.email ?? "No Email"),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pop(context);
              },
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
