import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/helpers/iconos.dart';

class DraggedItemEquipo {
  final ItemStack stack;
  final bool fromQuickSlot;
  final int fromIndex;

  DraggedItemEquipo({
    required this.stack,
    required this.fromQuickSlot,
    required this.fromIndex,
  });
}

class ItemSlotEquipo extends StatefulWidget {
  final ItemStack? stack;
  final int index;
  final VoidCallback onPressed;

  const ItemSlotEquipo({
    super.key,
    required this.stack,
    required this.index,
    required this.onPressed,
  });

  @override
  State<ItemSlotEquipo> createState() => _ItemSlotEquipoState();
}

class _ItemSlotEquipoState extends State<ItemSlotEquipo> {
  @override
  Widget build(BuildContext context) {
    return _itemContent(
      widget.stack ?? ItemStack(itemId: 'vacio', quantity: 1),
    );
  }

  Widget _itemContent(ItemStack? item) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconDataForItemClass(item!.item.clase.name, item.item.color),
            Padding(padding: EdgeInsetsGeometry.only(right: 5)),
            item.item.clase.name == 'vacio'
                ? SizedBox.shrink()
                : InkWell(
                    onTap: () {
                      widget.onPressed();
                    },
                    child: Icon(
                      Icons.delete,
                      size: 20,
                      color: const Color.fromARGB(255, 255, 166, 159),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
