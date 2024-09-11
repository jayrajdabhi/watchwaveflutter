import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Watch Store'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo Image
          Center(
            child: Image.asset(
              'assets/logo.png',
              height: 150,
            ),
          ),
          const SizedBox(height: 30),

          const Text(
            'Welcome to the Watch Store',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/products');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,  // Use backgroundColor for button color
              foregroundColor: Colors.black,  // Use foregroundColor for text color
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Shop Now',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  // homepage redircts after 5 seconds
  // @override
  // void initState() {
  //   super.initState();
  //   // Navigate to the ProductScreen after 5 seconds
  //   Timer(const Duration(seconds: 5), () {
  //     Navigator.pushReplacementNamed(context, '/products');
  //   });
  // }
}
