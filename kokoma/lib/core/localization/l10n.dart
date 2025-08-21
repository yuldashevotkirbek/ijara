import 'package:flutter/widgets.dart';

class L10n {
  static const supported = [Locale('uz'), Locale('ru')];

  static String appTitle(BuildContext context) => 'KOKOMA';
  static String catalog(BuildContext context) => 'Katalog';
  static String cart(BuildContext context) => 'Savatcha';
  static String checkout(BuildContext context) => 'Checkout';
}
