import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Buyurtma ma\'lumotlari'),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Ism')), 
            const TextField(decoration: InputDecoration(labelText: 'Telefon')), 
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Checkout uchun avtorizatsiya kerak bo\'ladi.')),
                );
              },
              child: const Text('Davom etish'),
            ),
          ],
        ),
      ),
    );
  }
}
