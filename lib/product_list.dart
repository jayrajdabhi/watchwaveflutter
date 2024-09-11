import 'package:flutter/material.dart';
import 'package:flutterprjgroup6/watch.dart';
import 'package:flutterprjgroup6/cart.dart';
import 'product_detail.dart'; // Assuming this is where WatchDetailScreen is

class ProductScreen extends StatelessWidget {
  final String? title;

  const ProductScreen({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Watch> watchList = [];
    watchList.add(Watch('Rolex', 'Submariner', 8000, 'A luxury diving watch.', 'assets/images/rolex_submariner.png'));
    watchList.add(Watch('Omega', 'Seamaster', 5000, 'A professional diving watch.', 'assets/images/omega_seamaster.png'));
    watchList.add(Watch('Tag Heuer', 'Carrera', 3000, 'A classic racing watch.', 'assets/images/tag_carrera.png'));

    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');  // Navigate to the cart screen
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: watchList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WatchDetailScreen(watch: watchList[index]),
                ),
              );
            },
            child: Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${watchList[index].brand} ${watchList[index].model}',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$${watchList[index].price}',
                      style: const TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
