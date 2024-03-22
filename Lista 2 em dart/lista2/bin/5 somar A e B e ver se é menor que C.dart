/*
Faça um algoritmo que leia os valores de A, B, C e em seguida imprima na tela a soma
entre A e B é mostre se a soma é menor que C.
*/

import 'dart:io';

void main(List<String> args) {
  print("Digite o valor de A:");
  int a = int.parse(stdin.readLineSync()!);

  print("Digite o valor de B:");
  int b = int.parse(stdin.readLineSync()!);

  print("Digite o valor de C:");
  int c = int.parse(stdin.readLineSync()!);

  int soma = a + b;

  if (soma < c) {
    print('A soma é menor que C.');
  } else {
    print('A soma não é menor que C.');
  }
}
