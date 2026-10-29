import 'package:flutter/material.dart';
import 'checkout_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    const int price = 5000;
    const int quantity = 1;
    const int total = price * quantity;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Card(
              child: ListTile(
                leading: const Text(
                  '🥬',
                  style: TextStyle(fontSize: 40),
                ),
                title: const Text('Kangkung'),
                subtitle: const Text('Jumlah: 1'),
                trailing: Text('Rp $price'),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Ringkasan Pembayaran',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text('Harga: Rp $price'),
            const Text('Jumlah: 1'),
            Text(
              'Total: Rp $total',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutPage(),
                    ),
                  );
                },
                child: const Text('Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}