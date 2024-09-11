import 'package:flutter/material.dart';
import 'cart.dart';
import 'watch.dart';

// A global list to hold the cart items
List<Watch> cartItems = [];

class WatchDetailScreen extends StatelessWidget {
  const WatchDetailScreen({Key? key, required this.watch}) : super(key: key);

  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${watch.brand} ${watch.model}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(watch.img),
            const SizedBox(height: 16),
            Text(
              watch.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'Price: \$${watch.price}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Continue Shopping'),
                ),
                ElevatedButton(
                  onPressed: () {
                    cartItems.add(watch); // Add the watch to the cart
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Added to Cart')),
                    );
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
