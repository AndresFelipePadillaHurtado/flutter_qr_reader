import 'package:isar/isar.dart';

part 'scan.g.dart';

@collection
class Scan {
  Id idIsar = Isar.autoIncrement;

  int? id;
  String tipo;
  String valor;

  Scan({
    this.id,
    required this.tipo,
    required this.valor,
  }) {
    if (valor.startsWith("http")) {
      tipo = "http";
    } else {
      tipo = "geo";
    }
  }

  factory Scan.fromJson(Map<String, dynamic> json) => Scan(
        id: json['id'],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
