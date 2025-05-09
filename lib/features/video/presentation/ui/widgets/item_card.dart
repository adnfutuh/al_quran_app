import 'package:flutter/material.dart';

import '../../../../../core/core.dart';

class ItemCard extends StatelessWidget {
  final ItemMenu item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Pallet.grey10,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: item.onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(item.icon, size: 24, color: Colors.black),
              const SizedBox(width: 8),
              Text(
                item.name,
                style: const TextStyle(fontSize: 16, color: Pallet.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
