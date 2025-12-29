import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/widgets/componentes/item_slot_inventario.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  PlayerInventory? _inventory;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadInventory();
  }

  Future<void> _loadInventory() async {
    final inv = await PlayerInventoryStorage.load();
    if (!mounted) return;
    setState(() {
      _inventory = inv;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading || _inventory == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContenedorNegro(),
          InkWell(
            onTap: () {
              Navigator.pop(context, true);
            },
            child: ContenedorVolver(),
          ),

          // ⬇ CONTENIDO
          Expanded(
            child: Column(
              children: [
                _buildQuickSlots(),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 8),

                // 👇 SOLO el inventario scrollea
                Expanded(
                  child: SingleChildScrollView(child: _buildInventory()),
                ),
              ],
            ),
          ),

          ContenedorNegro(),
        ],
      ),
    );
  }

  void _moveOrSwapItem({
    required DraggedItem dragged,
    required bool toQuickSlot,
    required int toIndex,
  }) {
    if (!mounted) return;

    if (toQuickSlot && dragged.stack.item.type.name != 'consumible') {
      return;
    }

    setState(() {
      final fromList = dragged.fromQuickSlot
          ? _inventory!.quickSlots
          : _inventory!.inventory;
      final toList = toQuickSlot
          ? _inventory!.quickSlots
          : _inventory!.inventory;

      if (dragged.fromIndex >= fromList.length || toIndex >= toList.length) {
        return;
      }

      // ⛔ mismo slot
      if (dragged.fromQuickSlot == toQuickSlot &&
          dragged.fromIndex == toIndex) {
        return;
      }

      ItemStack? fromStack = fromList[dragged.fromIndex];
      ItemStack? toStack = toList[toIndex];

      int toStackQuantity = toStack?.quantity ?? 0;
      int fromStackQuantity = fromStack?.quantity ?? 0;

      if (fromStack != null &&
          toStack != null &&
          fromStack.itemId == toStack.itemId) {
        toList[toIndex] = fromStack.copyWith(
          quantity: toStackQuantity + fromStackQuantity,
        );
        fromList[dragged.fromIndex] = null;
      } else {
        // 🔁 swap
        toList[toIndex] = fromStack;
        fromList[dragged.fromIndex] = toStack;
      }
    });

    // 💾 guardado persistente
    PlayerInventoryStorage.save(
      PlayerInventory(
        inventory: _inventory!.inventory,
        quickSlots: _inventory!.quickSlots,
      ),
    );
  }

  // ─────────────────────────────
  // QUICK SLOTS
  // ─────────────────────────────
  Widget _buildQuickSlots() {
    return GridView.count(
      crossAxisCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(maxQuickSlots, (i) {
        return ItemSlotInventario(
          stack: _inventory!.quickSlots[i],
          index: i,
          isQuickSlot: true,
          onItemDropped: (dragged) {
            _moveOrSwapItem(dragged: dragged, toQuickSlot: true, toIndex: i);
          },
        );
      }),
    );
  }

  // ─────────────────────────────
  // INVENTARIO
  // ─────────────────────────────
  Widget _buildInventory() {
    return GridView.count(
      crossAxisCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(maxInventorySlots, (i) {
        return ItemSlotInventario(
          stack: _inventory!.inventory[i],
          index: i,
          isQuickSlot: false,
          onItemDropped: (dragged) {
            _moveOrSwapItem(dragged: dragged, toQuickSlot: false, toIndex: i);
          },
        );
      }),
    );
  }
}
