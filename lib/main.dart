import 'package:flutter/material.dart';
import 'package:flutterprjgroup6/product_list.dart';
import 'cart.dart';
import 'home.dart';
import 'watch.dart';

void main() {
  runApp(const MyApp());
}

// Global cart list to store selected products
List<Watch> cartItems = [];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      // routes: {
      //   '/products': (context) => ProductScreen(title: 'Watch Store'),  // Product screen
      //   '/cart': (context) => CartScreen(cartItems: cartItems),          // Cart screen
      // },
    );
  }
}
