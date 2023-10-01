import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/functions/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/models/pessoa.dart';

void main(List<String> arguments) {
  print('Digite seu nome:');
  String? nome = stdin.readLineSync(encoding: utf8);
  if (nome == null || nome.isEmpty) {
    throw Exception('Digite o nome corretamente!');
  }
  print('Digite seu peso(em kg):');
  String? peso = stdin.readLineSync(encoding: utf8);
  print('Digite sua altura(em metros):');
  String? altura = stdin.readLineSync(encoding: utf8);
  Pessoa pessoa = Pessoa(nome: nome, peso: double.tryParse(peso ?? ''), altura: double.tryParse(altura ?? ''));
  double? resultado = calculadora_imc.calculateIMC(pessoa.getPeso(), pessoa.getAltura());
  var resultadoTruncado = resultado?.roundToDouble();
  print('Olá $nome, seu IMC é $resultadoTruncado');
}
