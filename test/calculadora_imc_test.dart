import 'package:calculadora_imc/functions/calculadora_imc.dart' as imc;
import 'package:test/test.dart';

void main() {
  test('Calcular IMC', () {
    expect(imc.calculateIMC(70, 1.70)?.roundToDouble(), 24);
  });
}
