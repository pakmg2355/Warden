import 'package:flutter/material.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/helpers/iconos.dart';

class DraggedItem {
  final ItemStack stack;
  final bool fromQuickSlot;
  final int fromIndex;

  DraggedItem({
    required this.stack,
    required this.fromQuickSlot,
    required this.fromIndex,
  });
}

class ItemSlotInventario extends StatefulWidget {
  final ItemStack? stack;
  final bool isQuickSlot;
  final int index;
  final void Function(DraggedItem dragged)? onItemDropped;
  final void Function(DraggedItem dragged)? onItemMoved;

  const ItemSlotInventario({
    super.key,
    required this.stack,
    required this.index,
    required this.isQuickSlot,
    this.onItemDropped,
    this.onItemMoved,
  });

  @override
  State<ItemSlotInventario> createState() => _ItemSlotInventarioState();
}

class _ItemSlotInventarioState extends State<ItemSlotInventario> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<DraggedItem>(
      onAcceptWithDetails: (details) {
        widget.onItemDropped?.call(details.data);
      },
      onMove: (details) {
        widget.onItemMoved?.call(details.data);
      },
      builder: (context, candidate, rejected) {
        if (widget.stack == null) {
          return _emptySlot();
        }

        return Draggable<DraggedItem>(
          data: DraggedItem(
            stack: widget.stack!,
            fromQuickSlot: widget.isQuickSlot,
            fromIndex: widget.index,
          ),
          feedback: _itemContent(widget.stack!),
          childWhenDragging: _emptySlot(),
          child: _itemContent(widget.stack!),
        );
      },
    );
  }

  Widget _emptySlot() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    );
  }

  Widget _itemContent(ItemStack item) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconDataForItemClass(item.item.clase.name, item.item.color),
            Text('${item.quantity}'),
          ],
        ),
      ),
    );
  }
}
