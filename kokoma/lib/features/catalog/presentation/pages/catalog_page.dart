import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kokoma/core/localization/l10n.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.catalog(context)),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () => context.go('/cart'),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.image)),
            title: Text('Mahsulot #${index + 1}'),
            subtitle: const Text('Qisqa tavsif'),
            trailing: const Text('UZS 100 000'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
