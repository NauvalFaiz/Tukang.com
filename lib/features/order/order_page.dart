import 'package:flutter/material.dart';
import 'order_detail_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // Contoh data dummy pesanan
  final List<Map<String, dynamic>> orders = [
    {
      'id': 1,
      'tukang': 'Tukang Listrik',
      'status': 'Menunggu Konfirmasi',
      'progress': 0.1,
    },
    {
      'id': 2,
      'tukang': 'Tukang Bangunan',
      'status': 'Dalam Pengerjaan',
      'progress': 0.6,
    },
    {
      'id': 3,
      'tukang': 'Tukang Pipa',
      'status': 'Selesai',
      'progress': 1.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Pesanan')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(order['tukang'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 6),
                  Text(order['status'],
                      style: TextStyle(
                          color: order['progress'] == 1.0
                              ? Colors.green
                              : Colors.orange)),
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: order['progress'],
                    backgroundColor: Colors.grey[300],
                    color: order['progress'] == 1.0
                        ? Colors.green
                        : Colors.orange,
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                OrderDetailPage(orderId: order['id'].toString()),
                          ),
                        );
                      },
                      child: const Text('Lihat Detail'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
