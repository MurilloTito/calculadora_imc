class Pessoa {
  String? nome;
  double? peso;
  double? altura;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  String? getNome() {
    return nome;
  }

  double? getPeso() {
    return peso;
  }

  double? getAltura() {
    return altura;
  }
}