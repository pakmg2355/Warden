import 'package:flutter/material.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/helpers/colores.dart';
import 'package:warden/game/helpers/iconos.dart';

class QuickSlotRow extends StatelessWidget {
  final List<ItemStack> items;
  final void Function(int index) onTap;
  const QuickSlotRow({super.key, required this.items, required this.onTap});

  Widget _buildEffectBadge(ItemStack item, int index) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => onTap(index),
        child: Container(
          margin: EdgeInsets.only(right: 10),
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: Colors.grey),
            color: Colors.green.withAlpha(40),
            boxShadow: const [BoxShadow(blurRadius: 4, offset: Offset(0, 2))],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                iconDataForItem(item.item.nombre),
                size: 20,
                color: colorForItem(item.item.instantEffects.first.kind),
              ),
              Positioned(bottom: 0, right: 0, child: Text('${item.quantity}')),
            ],
          ),
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
        children: List.generate(
          items.length,
          (index) => _buildEffectBadge(items[index], index),
        ),
      ),
    );
  }
}
