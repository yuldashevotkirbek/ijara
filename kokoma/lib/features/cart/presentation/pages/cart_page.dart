import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kokoma/core/localization/l10n.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L10n.cart(context))),
      body: const Center(
        child: Text('Savatcha hozircha bo\'sh.'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton.icon(
            onPressed: () => context.go('/checkout'),
            icon: const Icon(Icons.payment),
            label: Text(L10n.checkout(context)),
          ),
        ),
      ),
    );
  }
}
