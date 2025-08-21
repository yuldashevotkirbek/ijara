import 'package:flutter/material.dart';
import 'package:kokoma/features/catalog/domain/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.grey.shade200,
                child: const Icon(Icons.image, size: 64),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text('UZS ${product.priceUzs}'),
            const SizedBox(height: 12),
            Text(product.description),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: wire to cartProvider to add item
                },
                icon: const Icon(Icons.add_shopping_cart),
                label: const Text('Savatchaga qo\'shish'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
