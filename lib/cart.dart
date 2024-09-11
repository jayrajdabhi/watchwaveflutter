import 'package:flutter/material.dart';
import 'watch.dart';

class CartScreen extends StatelessWidget {
  final List<Watch> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset(item.img, width: 50, height: 50),
            title: Text('${item.brand} ${item.model}'),
            subtitle: Text('\$${item.price}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Logic to remove item from cart
                // In a stateful widget, you would use setState() to update the cart
              },
            ),
          );
        },
      ),
      bottomNavigationBar: cartItems.isEmpty
          ? null
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Implement checkout functionality here
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Proceeding to Checkout')),
            );
          },
          child: const Text('Checkout'),
        ),
      ),
    );
  }
}
