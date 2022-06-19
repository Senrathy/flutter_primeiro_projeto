import 'dart:convert';

class Cidade {
  String cidade;
  String estado;

  Cidade({
    required this.cidade,
    required this.estado,
  });

  Map<String, dynamic> toMap() {
    return {
      'cidade': cidade,
      'estado': estado,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> mapa) {
    return Cidade(
      cidade: mapa['cidade'] ?? '',
      estado: mapa['estado'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));
}
