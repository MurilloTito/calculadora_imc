double? calculateIMC(double? peso, double? altura) {
  if (peso != null && altura != null) {
    return peso / (altura * altura);
  }
  else if (peso == null && altura == null) {
    throw Exception('Digite peso e altura corretamente!');
  }
  else if(peso == null) {
    throw Exception('Digite o peso corretamente!');
  }
  else if (altura == null) {
    throw Exception('Digite a altura corretamente!');
  }
  return null;
}
