import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Simple Container UI'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ✅ Profile Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alex Rahman",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("Flutter Developer",
                          style: TextStyle(color: Colors.black54)),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Info Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  buildItem(Icons.calendar_today, "Today", "2 Meetings"),
                  const SizedBox(height: 12),
                  buildItem(Icons.task_alt, "Completed", "8 Tasks"),
                  const SizedBox(height: 12),
                  buildItem(Icons.flag, "Goals", "3 Targets"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Buttons Row
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Create Pressed")),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Create",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Schedule Pressed")),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const Center(
                        child: Text(
                          "Schedule",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ✅ Reusable Container Item
  Widget buildItem(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Colors.teal.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.teal),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            const SizedBox(height: 4),
            Text(subtitle, style: const TextStyle(color: Colors.black54)),
          ],
        )
      ],
    );
  }
}
