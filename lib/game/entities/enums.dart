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
  statAtaque,
  statDefensa,
  statPoder,
  statCuracion,
  statPowerRegen,
  none,
}

enum EffectGroup { spear, shield, fist, fear, daze }

enum AIPlan { attack, mixed, heal }

enum ControlState { normal, feared, dazed }

enum CombatResult { none, playerWin, rivalWin }

enum ItemType { consumable, buff }

enum InstantEffectKind { vidaFlat, vidaPercent, powerFlat, powerPercent }

enum Idioma { es, en }

enum Escritura { tolkien, tengwar }

enum Tema { dark, white }
