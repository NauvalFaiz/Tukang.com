import 'package:flutter/material.dart';

class TukangCard extends StatelessWidget {
  final dynamic tukang;
  const TukangCard({super.key, required this.tukang});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            tukang['image'] ?? 'https://picsum.photos/200',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(tukang['firstName']),
        subtitle: Text(tukang['company']['title'] ?? 'Tukang Umum'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.pushNamed(context, '/order'),
      ),
    );
  }
}
