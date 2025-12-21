import 'package:flutter/material.dart';
import 'package:warden/game/combos/combo_repository.dart';
import 'package:warden/game/helpers/combat_icon_helper.dart';

class ComboInfoCard extends StatelessWidget {
  final ComboDefinition combo;

  const ComboInfoCard({super.key, required this.combo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(120),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.amber.shade700.withAlpha(120)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Nombre
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [CombatIconsHelper.buildFromText(combo.sequence)],
          ),

          const Padding(padding: EdgeInsets.all(10)),

          Text(
            combo.name,
            style: const TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          /// Tipo + Tier
          Text(
            'Type: ${combo.type.name}  |  Tier: ${combo.tier}',
            style: const TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 6),

          /// Descripción
          Text(combo.description, style: const TextStyle(color: Colors.white)),

          const SizedBox(height: 6),

          /// Coste
          Text(
            'Power cost: ${combo.powerCost}',
            style: const TextStyle(color: Colors.redAccent),
          ),
        ],
      ),
    );
  }
}
