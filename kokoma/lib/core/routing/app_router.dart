import 'package:go_router/go_router.dart';
import 'package:kokoma/features/catalog/presentation/pages/catalog_page.dart';
import 'package:kokoma/features/cart/presentation/pages/cart_page.dart';
import 'package:kokoma/features/checkout/presentation/pages/checkout_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'catalog',
      builder: (context, state) => const CatalogPage(),
      routes: [
        GoRoute(
          path: 'cart',
          name: 'cart',
          builder: (context, state) => const CartPage(),
        ),
        GoRoute(
          path: 'checkout',
          name: 'checkout',
          builder: (context, state) => const CheckoutPage(),
        ),
      ],
    ),
  ],
);
