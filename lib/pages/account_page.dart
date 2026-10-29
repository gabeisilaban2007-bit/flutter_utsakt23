import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [

          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Akun Pengguna',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Pesanan Saya'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}