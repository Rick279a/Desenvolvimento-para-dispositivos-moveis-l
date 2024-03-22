/*
Faça um algoritmo para receber um número qualquer e imprimir na tela se o
número é par ou ímpar, positivo ou negativo.
*/

import 'dart:io';

void main() {
  print("Digite um número:");
  double numero = double.parse(stdin.readLineSync()!);

  if (numero % 2 == 0) {
    print("$numero é par.");
  } else {
    print("$numero é ímpar.");
  }

  if (numero > 0) {
    print("$numero é positivo.");
  } else if (numero < 0) {
    print("$numero é negativo.");
  } else {
    print("$numero é zero.");
  }
}
