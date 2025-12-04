import 'package:flutter/material.dart';

void main() => runApp(const SimplePhoneLoginApp());

class SimplePhoneLoginApp extends StatelessWidget {
  const SimplePhoneLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Phone Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhoneLoginPage(),
    );
  }
}

class PhoneLoginPage extends StatelessWidget {
  const PhoneLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),

              // Top logo / illustration
              Center(
                child: Column(
                  children: const [
                    Icon(Icons.phone_iphone, size: 72, semanticLabel: 'App logo'),
                    SizedBox(height: 12),
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Sign in with your phone number',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 36),

              // Phone input card
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Phone number', style: TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 10),

                      // Row with country code and phone field
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              children: const [
                                Text('+88'), // static country code in this simple layout
                                SizedBox(width: 6),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                hintText: 'Enter phone number',
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Optional small note
                      const Text(
                        "We'll send an OTP to this number",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),

                      const SizedBox(height: 8),

                      // Login button (no backend logic — UI only)
                      ElevatedButton(
                        onPressed: () {}, // intentionally empty: UI-only example
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text('Send OTP'),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Divider with "or"
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 20),

              // Social / alternative login row (UI only)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _SmallAltButton(icon: Icons.mail_outline, label: 'Email'),
                  _SmallAltButton(icon: Icons.fingerprint, label: 'Biometrics'),
                  _SmallAltButton(icon: Icons.person_outline, label: 'Guest'),
                ],
              ),

              const Spacer(),

              // Bottom text
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? '),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign up'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// A small reusable button widget used purely for UI; no external logic.
class _SmallAltButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const _SmallAltButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: IconButton(
            icon: Icon(icon),
            onPressed: () {}, // empty — UI only
            tooltip: label,
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
