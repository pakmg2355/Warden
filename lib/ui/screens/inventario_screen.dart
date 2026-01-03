import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/data/persistence/repositorios.dart';
import 'package:warden/game/controllers/util_combat.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/widgets/componentes/column_stats_personaje.dart';
import 'package:warden/ui/widgets/componentes/confirmacion.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';
import 'package:warden/ui/widgets/componentes/item_slot_equipo.dart';
import 'package:warden/ui/widgets/componentes/item_slot_inventario.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';

class InventoryScreen extends StatefulWidget {
  final PlayerProgress jugador;
  const InventoryScreen({super.key, required this.jugador});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  PlayerInventory? _inventory;
  PlayerEquipo? _equipo;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadInventory();
    _equipo = widget.jugador.equipo;
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
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
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
                    _titulo(
                      '${widget.jugador.nombre.toUpperCase()} Lvl: ${widget.jugador.nivel.toString().toUpperCase()}',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ItemSlotEquipo(
                              stack: _equipo!.casco,
                              index: 1,
                              onPressed: () => _unequip('casco'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.hombreras,
                              index: 1,
                              onPressed: () => _unequip('hombreras'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.pechera,
                              index: 1,
                              onPressed: () => _unequip('pechera'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.pantalones,
                              index: 1,
                              onPressed: () => _unequip('pantalones'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.botas,
                              index: 1,
                              onPressed: () => _unequip('botas'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.guantes,
                              index: 1,
                              onPressed: () => _unequip('guantes'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.capa,
                              index: 1,
                              onPressed: () => _unequip('capa'),
                            ),
                          ],
                        ),
                        DragTarget<DraggedItem>(
                          onWillAcceptWithDetails: (dragged) {
                            return true;
                          },
                          onAcceptWithDetails: (dragged) {
                            _equipItemFromInventory(dragged.data);
                          },
                          builder: (context, candidateData, rejectedData) {
                            return Container(
                              decoration: BoxDecoration(
                                border: candidateData.isNotEmpty
                                    ? Border.all(color: Colors.amber, width: 2)
                                    : null,
                              ),
                              child: Image.asset(
                                'assets/img/personaje.png',
                                width: 120,
                              ),
                            );
                          },
                        ),
                        ColumnStatsPersonaje(
                          stats: getTotalStats(
                            widget.jugador.statsBase,
                            _equipo!,
                          ),
                        ),
                        Column(
                          children: [
                            ItemSlotEquipo(
                              stack: _equipo!.pendiente1,
                              index: 1,
                              onPressed: () => _unequip('pendiente1'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.pendiente2,
                              index: 1,
                              onPressed: () => _unequip('pendiente2'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.anillo1,
                              index: 1,
                              onPressed: () => _unequip('anillo1'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.anillo2,
                              index: 1,
                              onPressed: () => _unequip('anillo2'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.collar,
                              index: 1,
                              onPressed: () => _unequip('collar'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.amuleto,
                              index: 1,
                              onPressed: () => _unequip('amuleto'),
                            ),
                            ItemSlotEquipo(
                              stack: _equipo!.hebilla,
                              index: 1,
                              onPressed: () => _unequip('hebilla'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    _titulo('QUICK SLOTS'),
                    _buildQuickSlots(),
                    Row(
                      children: [
                        Expanded(child: _titulo('INVENTARIO')),
                        DragTarget<DraggedItem>(
                          onWillAcceptWithDetails: (dragged) {
                            return true;
                          },
                          onAcceptWithDetails: (dragged) {
                            _eliminarItem(dragged.data);
                          },
                          builder: (context, candidateData, rejectedData) {
                            return Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E1E1E),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.grey.shade700,
                                  width: 2,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Icon(Icons.delete, color: Colors.red),
                            );
                          },
                        ),
                      ],
                    ),

                    Expanded(
                      child: SingleChildScrollView(child: _buildInventory()),
                    ),
                  ],
                ),
              ),

              ContenedorNegro(),
            ],
          ),
        ),
      ),
    );
  }

  void _eliminarItem(DraggedItem dragged) async {
    if (!mounted) return;

    final confirmar = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) => const ConfirmDialog(
        title: 'Destruir objeto',
        message:
            '¿Seguro que quieres destruir este objeto?\nEsta acción no se puede deshacer.',
      ),
    );

    if (confirmar != true) return;

    setState(() {
      final fromList = dragged.fromQuickSlot
          ? _inventory!.quickSlots
          : _inventory!.inventory;

      if (dragged.fromIndex < 0 || dragged.fromIndex >= fromList.length) {
        return;
      }

      // 🔥 eliminar permanentemente
      fromList[dragged.fromIndex] = null;
    });

    // 💾 guardar inventario actualizado
    PlayerInventoryStorage.save(
      PlayerInventory(
        inventory: _inventory!.inventory,
        quickSlots: _inventory!.quickSlots,
      ),
    );
  }

  void _unequip(String clase) {
    setState(() {
      final stack = _equipo!.getSlotByClase(clase);
      if (stack == null || stack.itemId == 'vacio') return;

      _addToInventory(stack);
      _equipo!.setSlotByClase(clase, ItemStack(itemId: 'vacio', quantity: 1));

      _guardarTodo();
    });
  }

  void _equipItemFromInventory(DraggedItem dragged) {
    final clase = dragged.stack.item.clase.name;

    setState(() {
      // 1️⃣ slot actual
      final equipadoActual = _equipo!.getSlotByClase(clase);

      // 2️⃣ si había algo equipado → vuelve al inventario
      if (equipadoActual != null && equipadoActual.itemId != 'vacio') {
        _addToInventory(equipadoActual);
      }

      // 3️⃣ equipar nuevo
      _equipo!.setSlotByClase(clase, dragged.stack);

      // 4️⃣ eliminar del inventario origen
      final fromList = dragged.fromQuickSlot
          ? _inventory!.quickSlots
          : _inventory!.inventory;

      fromList[dragged.fromIndex] = null;

      _guardarTodo();
    });
  }

  void _addToInventory(ItemStack stack) {
    final index = _inventory!.inventory.indexWhere((e) => e == null);
    if (index != -1) {
      _inventory!.inventory[index] = stack;
    }
  }

  void _guardarTodo() {
    PlayerProgress pronew = widget.jugador.copyWith(equipo: _equipo);
    PlayerProgressRepository.save(pronew);

    PlayerInventoryStorage.save(
      PlayerInventory(
        inventory: _inventory!.inventory,
        quickSlots: _inventory!.quickSlots,
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
  // TITULO
  // ─────────────────────────────
  Widget _titulo(String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade700, width: 2),
        boxShadow: const [
          BoxShadow(color: Colors.black87, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [GameText.text(text)],
      ),
    );
  }

  // ─────────────────────────────
  // QUICK SLOTS
  // ─────────────────────────────
  Widget _buildQuickSlots() {
    return GridView.count(
      crossAxisCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
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
      crossAxisCount: (maxInventorySlots / 3).toInt(),
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
