import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kokoma/features/cart/data/cart_repository.dart';
import 'package:kokoma/features/cart/domain/cart_item.dart';
import 'package:kokoma/features/catalog/domain/product.dart';

final cartRepositoryProvider = Provider<CartRepository>((ref) => CartRepository());

final cartProvider = StateNotifierProvider<CartController, List<CartItem>>((ref) {
  return CartController(ref.read(cartRepositoryProvider));
});

class CartController extends StateNotifier<List<CartItem>> {
  final CartRepository _repo;
  CartController(this._repo) : super(const []) {
    _load();
  }

  Future<void> _load() async {
    state = await _repo.load();
  }

  Future<void> add(Product p) async {
    final idx = state.indexWhere((e) => e.product.id == p.id);
    if (idx >= 0) {
      final updated = [...state];
      updated[idx] = updated[idx].copyWith(quantity: updated[idx].quantity + 1);
      state = updated;
    } else {
      state = [...state, CartItem(product: p, quantity: 1)];
    }
    await _repo.save(state);
  }

  Future<void> remove(Product p) async {
    state = state.where((e) => e.product.id != p.id).toList();
    await _repo.save(state);
  }

  Future<void> changeQty(Product p, int qty) async {
    if (qty <= 0) return remove(p);
    final idx = state.indexWhere((e) => e.product.id == p.id);
    if (idx >= 0) {
      final updated = [...state];
      updated[idx] = updated[idx].copyWith(quantity: qty);
      state = updated;
      await _repo.save(state);
    }
  }

  int get subtotal => state.fold(0, (sum, e) => sum + e.totalUzs);
}
