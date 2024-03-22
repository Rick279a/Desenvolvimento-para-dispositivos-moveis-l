/*
Faça um algoritmo que leia o valor do salário mínimo e o valor do salário de um
usuário, calcule quantos salários mínimos esse usuário ganha e imprima na tela 
o resultado.
(Base para o Salário mínimo R$ 1.412).
*/

import 'dart:io';

void main() {
  double salarioMinimo = 1412;

  print("Digite o valor do salário do usuário:");

  double salarioUsuario = double.parse(stdin.readLineSync()!);

  double quantidade = salarioUsuario / salarioMinimo;

  print("O usuário ganha $quantidade salários mínimos.");
}
