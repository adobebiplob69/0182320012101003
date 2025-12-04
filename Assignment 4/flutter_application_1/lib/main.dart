import 'package:flutter/material.dart';

void main() {
  runApp(MyHomeUI());
}

class MyHomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/wallpaper.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: PageView(
              children: [
                // ---------------- LEFT SCREEN ----------------
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text("FRI",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold)),
                      const Text("22",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold)),
                      const Text("January",
                          style: TextStyle(color: Colors.white70, fontSize: 18)),
                      const SizedBox(height: 30),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text("Calendar Widget",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 14))),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/icons/mail.png",
                              height: 40, color: Colors.white),
                          Image.asset("assets/icons/youtube.png",
                              height: 40, color: Colors.white),
                          Image.asset("assets/icons/messenger.png",
                              height: 40, color: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/icons/whatsapp.png",
                              height: 40, color: Colors.white),
                          Image.asset("assets/icons/photos.png",
                              height: 40, color: Colors.white),
                          Image.asset("assets/icons/clock.png",
                              height: 40, color: Colors.white),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.call, color: Colors.white, size: 28),
                          Icon(Icons.message, color: Colors.white, size: 28),
                          Icon(Icons.home, color: Colors.white, size: 28),
                        ],
                      ),
                    ],
                  ),
                ),

                // ---------------- MIDDLE LOCK SCREEN ----------------
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.lock, color: Colors.white, size: 30),
                      SizedBox(height: 15),
                      Text("7:15",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("Friday, January 22",
                          style: TextStyle(color: Colors.white70, fontSize: 16)),
                    ],
                  ),
                ),

                // ---------------- RIGHT SCREEN ----------------
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("JAN 22",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      const Text("07:15",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 30),
                      const Text("Social Networks",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/icons/tiktok.png",
                              height: 40, color: Colors.white),
                          Image.asset("assets/icons/facebook.png",
                              height: 40, color: Colors.white),
                          Image.asset("assets/icons/instagram.png",
                              height: 40, color: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const Text("Notes",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      const SizedBox(height: 10),
                      const Text(
                        "• Meeting with Leann\n• Finish project layout\n• Notes update",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.call, color: Colors.white, size: 28),
                          Icon(Icons.message, color: Colors.white, size: 28),
                          Icon(Icons.music_note, color: Colors.white, size: 28),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
