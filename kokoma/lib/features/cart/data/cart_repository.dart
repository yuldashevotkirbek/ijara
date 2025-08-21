import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kokoma/features/cart/domain/cart_item.dart';

class CartRepository {
  static const _key = 'cart_items_v1';

  Future<void> save(List<CartItem> items) async {
    final prefs = await SharedPreferences.getInstance();
    final data = items
        .map((e) => {
              'id': e.product.id,
              'title': e.product.title,
              'desc': e.product.description,
              'price': e.product.priceUzs,
              'img': e.product.imageUrl,
              'cat': e.product.category,
              'qty': e.quantity,
            })
        .toList();
    await prefs.setString(_key, jsonEncode(data));
  }

  Future<List<CartItem>> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw == null) return [];
    final list = (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
    return list
        .map((m) => CartItem(
              product: Product(
                id: m['id'],
                title: m['title'],
                description: m['desc'],
                priceUzs: m['price'],
                imageUrl: m['img'],
                category: m['cat'],
              ),
              quantity: m['qty'],
            ))
        .toList();
  }
}
