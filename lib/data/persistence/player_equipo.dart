import 'package:warden/game/entities/item.dart';

class PlayerEquipo {
  final ItemStack? casco;
  final ItemStack? hombreras;
  final ItemStack? pechera;
  final ItemStack? pantalones;

  PlayerEquipo({this.casco, this.hombreras, this.pechera, this.pantalones});

  Map<String, dynamic> toJson() {
    return {
      'casco': casco?.itemId,
      'hombreras': hombreras?.itemId,
      'pechera': pechera?.itemId,
      'pantalones': pantalones?.itemId,
    };
  }

  factory PlayerEquipo.fromJson(Map<String, dynamic> json) {
    return PlayerEquipo(
      casco: json['casco'] != null
          ? ItemStack(itemId: json['casco'], quantity: 1)
          : null,
      hombreras: json['hombreras'] != null
          ? ItemStack(itemId: json['hombreras'], quantity: 1)
          : null,
      pechera: json['pechera'] != null
          ? ItemStack(itemId: json['pechera'], quantity: 1)
          : null,
      pantalones: json['pantalones'] != null
          ? ItemStack(itemId: json['pantalones'], quantity: 1)
          : null,
    );
  }
}
