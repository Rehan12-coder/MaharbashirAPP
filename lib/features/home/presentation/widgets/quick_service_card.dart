import 'package:flutter/material.dart';

class QuickServiceCard extends StatelessWidget {
  const QuickServiceCard({super.key});

  Widget item(IconData icon, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.red.shade100,
          child: Icon(icon, color: Colors.red),
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          item(Icons.confirmation_number, "Book"),
          item(Icons.receipt_long, "Tickets"),
          item(Icons.location_searching, "Track"),
          item(Icons.local_offer, "Offers"),
        ],
      ),
    );
  }
}