import 'package:flutter/material.dart';
import 'package:warden/game/entities/logs.dart';
import 'package:warden/game/helpers/colores.dart';

class CombatLogView extends StatelessWidget {
  final List<CombatLogEntry> log;

  const CombatLogView({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    final entries = log.reversed.toList();

    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: const Color.fromARGB(30, 107, 107, 107),
        border: const Border(top: BorderSide(color: Colors.black12)),
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 6,
        runSpacing: 6,
        children: entries.map(_buildBubble).toList(),
      ),
    );
  }

  Widget _buildBubble(CombatLogEntry e) {
    final baseColor = baseColorForEffect(e.type);
    final sign = e.valor > 0 ? '+' : '';
    final text = '$sign${e.valor} T${e.tier}';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: baseColor.withAlpha(30),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: baseColor.withAlpha(180)),
        boxShadow: [
          BoxShadow(
            color: baseColor.withAlpha(60),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(text, style: TextStyle(fontSize: 10)),
    );
  }
}
