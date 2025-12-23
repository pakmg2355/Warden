import 'package:flutter/material.dart';
import 'package:warden/game/combos/combo_repository.dart';
import 'package:warden/game/helpers/combat_icon_helper.dart';
import 'package:warden/ui/widgets/game_text.dart';

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
          GameText.text(combo.name),
          GameText.text('Type: ${combo.type.name}  |  Tier: ${combo.tier}'),
          const SizedBox(height: 6),
          GameText.text(combo.description),
          const SizedBox(height: 6),
          GameText.text('Power: -${combo.powerCost}'),
        ],
      ),
    );
  }
}
