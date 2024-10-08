
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';  // Import item_page dengan huruf kecil
import 'package:belanja/models/item.dart';      // Import model item dengan huruf kecil

void main() {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',  // Route untuk HomePage
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/item',  // Route untuk item_page dengan argument
        builder: (context, state) {
          final item itemData = state.extra as item;  // Menggunakan 'item' huruf kecil
          return item_page(itemArgs: itemData);  // Kirim item ke item_page
        },
      ),
    ],
  );

  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({required this.router, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Belanja App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
