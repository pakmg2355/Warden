import 'package:warden/game/entities/item.dart';

class PlayerEquipo {
  ItemStack? casco = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? hombreras = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? pechera = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? pantalones = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? botas = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? guantes = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? capa = ItemStack(itemId: 'vacio', quantity: 1);

  ItemStack? arma = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? escudo = ItemStack(itemId: 'vacio', quantity: 1);

  ItemStack? pendiente1 = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? pendiente2 = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? anillo1 = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? anillo2 = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? collar = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? amuleto = ItemStack(itemId: 'vacio', quantity: 1);
  ItemStack? hebilla = ItemStack(itemId: 'vacio', quantity: 1);

  PlayerEquipo({
    this.casco,
    this.hombreras,
    this.pechera,
    this.pantalones,
    this.botas,
    this.guantes,
    this.capa,

    this.arma,
    this.escudo,

    this.pendiente1,
    this.pendiente2,
    this.anillo1,
    this.anillo2,
    this.collar,
    this.amuleto,
    this.hebilla,
  });

  Map<String, dynamic> toJson() {
    return {
      'casco': casco?.itemId,
      'hombreras': hombreras?.itemId,
      'pechera': pechera?.itemId,
      'pantalones': pantalones?.itemId,
      'botas': botas?.itemId,
      'guantes': guantes?.itemId,
      'capa': capa?.itemId,

      'arma': arma?.itemId,
      'escudo': escudo?.itemId,

      'pendiente1': pendiente1?.itemId,
      'pendiente2': pendiente2?.itemId,
      'anillo1': anillo1?.itemId,
      'anillo2': anillo2?.itemId,
      'collar': collar?.itemId,
      'amuleto': amuleto?.itemId,
      'hebilla': hebilla?.itemId,
    };
  }

  factory PlayerEquipo.fromJson(Map<String, dynamic> json) {
    return PlayerEquipo(
      casco: ItemStack(itemId: json['casco'] ?? 'vacio', quantity: 1),
      hombreras: ItemStack(itemId: json['hombreras'] ?? 'vacio', quantity: 1),
      pechera: ItemStack(itemId: json['pechera'] ?? 'vacio', quantity: 1),
      pantalones: ItemStack(itemId: json['pantalones'] ?? 'vacio', quantity: 1),
      botas: ItemStack(itemId: json['botas'] ?? 'vacio', quantity: 1),
      guantes: ItemStack(itemId: json['guantes'] ?? 'vacio', quantity: 1),
      capa: ItemStack(itemId: json['capa'] ?? 'vacio', quantity: 1),

      arma: ItemStack(itemId: json['arma'] ?? 'vacio', quantity: 1),
      escudo: ItemStack(itemId: json['escudo'] ?? 'vacio', quantity: 1),

      pendiente1: ItemStack(itemId: json['pendiente1'] ?? 'vacio', quantity: 1),
      pendiente2: ItemStack(itemId: json['pendiente2'] ?? 'vacio', quantity: 1),
      anillo1: ItemStack(itemId: json['anillo1'] ?? 'vacio', quantity: 1),
      anillo2: ItemStack(itemId: json['anillo2'] ?? 'vacio', quantity: 1),
      collar: ItemStack(itemId: json['collar'] ?? 'vacio', quantity: 1),
      amuleto: ItemStack(itemId: json['amuleto'] ?? 'vacio', quantity: 1),
      hebilla: ItemStack(itemId: json['hebilla'] ?? 'vacio', quantity: 1),
    );
  }

  ItemStack? getSlotByClase(String clase) {
    switch (clase) {
      case 'casco':
        return casco;
      case 'hombreras':
        return hombreras;
      case 'pechera':
        return pechera;
      case 'pantalones':
        return pantalones;
      case 'botas':
        return botas;
      case 'guantes':
        return guantes;
      case 'capa':
        return capa;
      case 'arma':
        return arma;
      case 'escudo':
        return escudo;
      case 'pendiente1':
        return pendiente1;
      case 'pendiente2':
        return pendiente2;
      case 'anillo1':
        return anillo1;
      case 'anillo2':
        return anillo2;
      case 'collar':
        return collar;
      case 'amuleto':
        return amuleto;
      case 'hebilla':
        return hebilla;
    }
    return null;
  }

  void setSlotByClase(String clase, ItemStack stack) {
    switch (clase) {
      case 'casco':
        casco = stack;
        break;
      case 'hombreras':
        hombreras = stack;
        break;
      case 'pechera':
        pechera = stack;
        break;
      case 'pantalones':
        pantalones = stack;
        break;
      case 'botas':
        botas = stack;
        break;
      case 'guantes':
        guantes = stack;
        break;
      case 'capa':
        capa = stack;
        break;
      case 'arma':
        arma = stack;
        break;
      case 'escudo':
        escudo = stack;
        break;
      case 'pendiente1':
        pendiente1 = stack;
        break;
      case 'pendiente2':
        pendiente2 = stack;
        break;
      case 'anillo1':
        anillo1 = stack;
        break;
      case 'anillo2':
        anillo2 = stack;
        break;
      case 'collar':
        collar = stack;
        break;
      case 'amuleto':
        amuleto = stack;
        break;
      case 'hebilla':
        hebilla = stack;
        break;
    }
  }
}
