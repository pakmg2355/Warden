enum EffectTarget { self, enemy }

enum EffectType {
  damage,
  heal,
  power,
  shieldmaster,
  shiteldtactics,
  fear,
  daze,
  fearStack,
  dazeStack,
  none,
}

enum EffectGroup { spear, shield, fist, fear, daze }

enum AIPlan { attack, mixed, heal }

enum ControlState { normal, feared, dazed }

enum CombatResult { none, playerWin, rivalWin }

enum ItemType { consumable, buff }
