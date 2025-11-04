import 'package:flutter/material.dart';
import '../../core/models/user_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserModel(
      name: 'Nauval Faiz Luthf Hisyam',
      email: 'nauval@example.com',
      phone: '+62 812 3456 7890',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            title: Text(user.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: Text('${user.email}\n${user.phone}'),
            isThreeLine: true,
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/logo_tukang.png'),
            ),
          ),
        ),
      ),
    );
  }
}
