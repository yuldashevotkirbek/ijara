import 'package:flutter/material.dart';
import 'package:kokoma/core/routing/app_router.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const KokomaApp());
}

class KokomaApp extends StatelessWidget {
  const KokomaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'KOKOMA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F9D58)),
        useMaterial3: true,
      ),
      supportedLocales: const [
        Locale('uz'),
        Locale('ru'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: router,
    );
  }
}

