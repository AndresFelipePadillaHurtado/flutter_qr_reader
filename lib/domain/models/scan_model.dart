class ScandModel {
  int? id;
  String tipo;
  String valor;

  ScandModel({
    this.id,
    required this.tipo,
    required this.valor,
  }) {
    if (valor.contains("http")) {
      tipo = "http";
    } else {
      tipo = "geo";
    }
  }

  factory ScandModel.fromJson(Map<String, dynamic> json) => ScandModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
