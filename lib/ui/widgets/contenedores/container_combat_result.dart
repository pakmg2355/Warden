import 'dart:math';
import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/nodo.dart';
import 'package:warden/game/helpers/iconos.dart';
import 'package:warden/game/items_repositoty/item_definition.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/ui/widgets/botones/boton_menu.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

class CombatRewardContainer extends StatefulWidget {
  final CombatResult result;
  final int playerLevel;
  final StoryNode nodo;

  const CombatRewardContainer({
    super.key,
    required this.result,
    required this.playerLevel,
    required this.nodo,
  });

  @override
  State<CombatRewardContainer> createState() => _CombatRewardContainerState();
}

class _CombatRewardContainerState extends State<CombatRewardContainer> {
  late final List<ItemDefinition> _rewardItems;
  ItemDefinition? _selected;

  @override
  void initState() {
    super.initState();
    _rewardItems = _pickRandomItems(2);
  }

  List<ItemDefinition> _pickRandomItems(int count) {
    List<ItemDefinition> lista = [];
    final item1 = ItemDatabase.items.values
        .where(
          (e) => e.minLevel <= widget.playerLevel && e.clase.name == 'pocion',
        )
        .toList();
    item1.shuffle(Random());
    final item2 = ItemDatabase.items.values
        .where(
          (e) => e.minLevel <= widget.playerLevel && e.clase.name != 'pocion',
        )
        .toList();
    item2.shuffle(Random());

    lista.add(item1[0]);
    lista.add(item2[0]);

    return lista;
  }

  Future<void> _acceptReward() async {
    PlayerInventory inventory = await PlayerInventoryStorage.load();
    // 🔎 buscar stack existente
    final existingIndex = inventory.inventory.indexWhere(
      (s) => s?.itemId == _selected!.id,
    );

    if (existingIndex != -1) {
      inventory.inventory[existingIndex] = inventory.inventory[existingIndex]!
          .copyWith(quantity: inventory.inventory[existingIndex]!.quantity + 1);
    } else {
      // 🆕 primer slot libre
      final emptyIndex = inventory.inventory.indexWhere((s) => s == null);
      if (emptyIndex != -1) {
        inventory.inventory[emptyIndex] = ItemStack(
          itemId: _selected!.id,
          quantity: 1,
        );
      }
    }

    await PlayerInventoryStorage.save(inventory);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withAlpha(30),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.result.name == 'playerWin'
              ? Column(
                  children: [
                    const Divider(),
                    GameText.text(t('texto.playerWin'), size: 30),
                    const Divider(),
                    const SizedBox(height: 24),
                    GameText.text(t('texto.eligeRecompensa'), size: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _rewardItems.map(_buildItemCard).toList(),
                    ),
                  ],
                )
              : Column(
                  children: [
                    const Divider(),
                    GameText.text(t('texto.rivalWin'), size: 30),
                    const Divider(),
                  ],
                ),

          const SizedBox(height: 24),
          MenuButton(
            text: t('boton.aceptar'),
            icon: Icons.check,
            onTap: () async {
              if (widget.result.name != 'playerWin') {
                Navigator.pop(context, true);
              } else {
                if (_selected == null) return;
                _acceptReward();
                Navigator.pop(context, {"win": true, "nodo": widget.nodo});
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItemCard(ItemDefinition item) {
    final selected = _selected?.id == item.id;

    return GestureDetector(
      onTap: () {
        setState(() => _selected = item);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.all(16),
        width: 160,
        decoration: BoxDecoration(
          color: selected ? Colors.amber.withAlpha(50) : Colors.black,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? Colors.amber : Colors.grey,
            width: selected ? 2 : 1,
          ),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.amber.withAlpha(50),
                    blurRadius: 12,
                    spreadRadius: 2,
                  ),
                ]
              : [],
        ),
        child: Column(
          children: [
            iconDataForItemClass(item.clase.name, item.color, size: 40),
            GameText.text(t('item.${item.id}.descripcion')),
            GameText.text('Lv.${item.minLevel.toString()}'),
            GameText.text(item.stats.toString()),
          ],
        ),
      ),
    );
  }
}
