import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kirish')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(decoration: InputDecoration(labelText: 'Parol'), obscureText: true),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Firebase Auth sozlamalari talab qilinadi.')),
                );
              },
              child: const Text('Kirish'),
            ),
          ],
        ),
      ),
    );
  }
}
