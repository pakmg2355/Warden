import 'package:flutter/material.dart';
import 'package:warden/game/entities/item.dart';

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

class ItemSlotInventario extends StatelessWidget {
  final ItemStack? stack;
  final void Function(DraggedItem)? onAccept;
  final bool isQuickSlot;
  final int index;

  const ItemSlotInventario({
    super.key,
    required this.stack,
    required this.index,
    required this.isQuickSlot,
    this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<DraggedItem>(
      onAccept: onAccept,
      builder: (context, candidate, rejected) {
        return stack == null
            ? _emptySlot()
            : Draggable<DraggedItem>(
                data: DraggedItem(
                  stack: stack!,
                  fromQuickSlot: isQuickSlot,
                  fromIndex: index,
                ),
                feedback: _itemContent(opacity: 0.8),
                childWhenDragging: _emptySlot(),
                child: _itemContent(),
              );
      },
    );
  }

  Widget _emptySlot() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    );
  }

  Widget _itemContent({double opacity = 1}) {
    return Opacity(
      opacity: opacity,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.local_drink), Text('x${stack!.quantity}')],
        ),
      ),
    );
  }
}
