enum EffectTarget { self, enemy }

enum EffectType {
  damage,
  fist,
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

enum ControlState { normal, feared, dazed }

enum CombatResult { none, playerWin, rivalWin }

enum ItemType { consumible, equipo }

enum ItemClass {
  vacio,
  pocion,
  casco,
  hombreras,
  pechera,
  pantalones,
  botas,
  guantes,
  capa,
  arma,
  escudo,
  pendiente,
  collar,
  anillo,
  hebilla,
}

enum InstantEffectKind { vidaFlat, vidaPercent, powerFlat, powerPercent }

enum Idioma { es, en }

enum Escritura { tolkien, tengwar }

enum Tema { dark, white }

enum Equipo {
  casco,
  pechera,
  pantalones,
  guantes,
  botas,
  capa,
  hombreras,
  anilloI,
  anilloD,
  brazaleteI,
  brazaleteD,
  collar,
  pendienteI,
  pendienteD,
}
