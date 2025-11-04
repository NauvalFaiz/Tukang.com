import 'package:flutter/material.dart';

class OrderDetailPage extends StatefulWidget {
  final String orderId;
  const OrderDetailPage({super.key, required this.orderId});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  double progress = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Pesanan #${widget.orderId}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Status: ${progress < 1 ? "Dalam Proses" : "Selesai"}'),
            const SizedBox(height: 10),
            LinearProgressIndicator(value: progress),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  progress = (progress + 0.2).clamp(0.0, 1.0);
                });
              },
              child: const Text('Update Progres'),
            ),
          ],
        ),
      ),
    );
  }
}
