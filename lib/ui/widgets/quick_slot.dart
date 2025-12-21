import 'package:flutter/material.dart';

import 'package:warden/game/items/item_definition.dart';

class QuickSlotRow extends StatelessWidget {
  final List<ItemStack> items;

  const QuickSlotRow({super.key, required this.items});

  IconData _iconDataForItem(String id) {
    switch (id) {
      case 'EffectType.damage':
        return Icons.thermostat;
    }

    return Icons.thermostat;
  }

  Widget _buildEffectBadge(ItemStack item) {
    return InkWell(
      child: Container(
        width: 38,
        decoration: BoxDecoration(
          border: BoxBorder.all(width: 1, color: Colors.grey),
          shape: BoxShape.circle,
          color: Colors.green.withAlpha(40),
          boxShadow: [BoxShadow(blurRadius: 4, offset: const Offset(0, 2))],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(bottom: 0, right: 0, child: Text('${item.quantity}')),

            /// ICONO
            Icon(
              _iconDataForItem(item.item.nombre),
              size: 18,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox(height: 38);
    }

    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(30, 255, 255, 255), // fondo muy suave
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black.withAlpha(40)),
      ),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: items.map(_buildEffectBadge).toList(),
      ),
    );
  }
}
