import 'package:flutter/material.dart';
import '../data/product_data.dart';
import 'payment_page.dart';

class CategoryPage extends StatelessWidget {
  final String category;

  const CategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final categoryProducts = products
        .where((product) => product.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categoryProducts.length,
        itemBuilder: (context, index) {
          final product = categoryProducts[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Text(
                product.image,
                style: const TextStyle(fontSize: 40),
              ),
              title: Text(product.name),
              subtitle: Text('Rp ${product.price}'),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  );
                },
                child: const Text('Beli'),
              ),
            ),
          );
        },
      ),
    );
  }
}