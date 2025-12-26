import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/ui/widgets/componentes/item_slot_inventario.dart';

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
    setState(() {
      _inventory = inv;
      _loading = false;
    });
  }

  void _moveItem(DraggedItem item, bool toQuickSlot, int toIndex) {
    if (_inventory == null) return;

    setState(() {
      final source = item.fromQuickSlot
          ? _inventory!.quickSlots
          : _inventory!.inventory;
      final target = toQuickSlot
          ? _inventory!.quickSlots
          : _inventory!.inventory;

      // Vaciar origen
      source[item.fromIndex] = null;

      // Colocar en destino
      target[toIndex] = item.stack;
    });

    PlayerInventoryStorage.save(_inventory!);
  }

  @override
  Widget build(BuildContext context) {
    if (_loading || _inventory == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Inventario')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildQuickSlots(),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            _buildInventory(),
          ],
        ),
      ),
    );
  }

  // ─────────────────────────────
  // QUICK SLOTS
  // ─────────────────────────────
  Widget _buildQuickSlots() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Slots',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        GridView.count(
          crossAxisCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: List.generate(10, (i) {
            return ItemSlotInventario(
              stack: _inventory!.quickSlots.length > i
                  ? _inventory!.quickSlots[i]
                  : null,
              index: i,
              isQuickSlot: true,
              onAccept: (item) => _moveItem(item, true, i),
            );
          }),
        ),
      ],
    );
  }

  // ─────────────────────────────
  // INVENTARIO
  // ─────────────────────────────
  Widget _buildInventory() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Inventario',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: GridView.count(
              crossAxisCount: 5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: List.generate(100, (i) {
                return ItemSlotInventario(
                  stack: _inventory!.inventory.length > i
                      ? _inventory!.inventory[i]
                      : null,
                  index: i,
                  isQuickSlot: false,
                  onAccept: (item) => _moveItem(item, false, i),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
