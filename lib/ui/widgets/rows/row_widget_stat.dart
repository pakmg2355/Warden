import 'package:flutter/material.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/helpers/colores.dart';

Widget rowWidgetStatsPlayer(StatsClass e) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: colorForStat('ataque'),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: colorForStat('ataque').withAlpha(180)),
          boxShadow: [
            BoxShadow(
              color: colorForStat('ataque').withAlpha(60),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          e.ataque.toString(),
          style: TextStyle(fontSize: 11, color: Colors.black),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: colorForStat('defensa'),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: colorForStat('defensa').withAlpha(180)),
          boxShadow: [
            BoxShadow(
              color: colorForStat('defensa').withAlpha(60),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          e.defensa.toString(),
          style: TextStyle(fontSize: 11, color: Colors.black),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: colorForStat('poder'),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: colorForStat('poder').withAlpha(180)),
          boxShadow: [
            BoxShadow(
              color: colorForStat('poder').withAlpha(60),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          e.poder.toString(),
          style: TextStyle(fontSize: 11, color: Colors.black),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: colorForStat('curacion'),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: colorForStat('curacion').withAlpha(180)),
          boxShadow: [
            BoxShadow(
              color: colorForStat('curacion').withAlpha(60),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          e.curacion.toString(),
          style: TextStyle(fontSize: 11, color: Colors.black),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: colorForStat('powerregen'),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: colorForStat('powerregen').withAlpha(180)),
          boxShadow: [
            BoxShadow(
              color: colorForStat('powerregen').withAlpha(60),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          e.powerRegen.toString(),
          style: TextStyle(fontSize: 11, color: Colors.black),
        ),
      ),
    ],
  );
}
