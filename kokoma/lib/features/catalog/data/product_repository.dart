import 'package:kokoma/features/catalog/domain/product.dart';

abstract class ProductRepository {
  Stream<List<Product>> watchProducts({String? query, String? category});
}

class MockProductRepository implements ProductRepository {
  final _items = List.generate(
    20,
    (i) => Product(
      id: 'p$i',
      title: 'Mahsulot ${i + 1}',
      description: 'Bu mahsulot ${i + 1} uchun qisqa tavsif.',
      priceUzs: 50000 + i * 10000,
      imageUrl: '',
      category: i % 2 == 0 ? 'Elektronika' : 'Uy-ro\'zg\'or',
    ),
  );

  @override
  Stream<List<Product>> watchProducts({String? query, String? category}) async* {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    var list = _items;
    if (query != null && query.isNotEmpty) {
      list = list
          .where((e) => e.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    if (category != null && category.isNotEmpty) {
      list = list.where((e) => e.category == category).toList();
    }
    yield list;
  }
}
