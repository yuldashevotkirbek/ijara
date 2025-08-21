import 'package:kokoma/features/catalog/domain/product.dart';

class CartItem {
  final Product product;
  final int quantity;

  const CartItem({required this.product, required this.quantity});

  CartItem copyWith({Product? product, int? quantity}) => CartItem(
        product: product ?? this.product,
        quantity: quantity ?? this.quantity,
      );

  int get totalUzs => product.priceUzs * quantity;
}
