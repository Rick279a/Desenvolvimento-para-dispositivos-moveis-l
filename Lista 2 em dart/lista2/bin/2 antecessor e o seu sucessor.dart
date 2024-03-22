/*
Faça um algoritmo que receba um número inteiro e imprima na tela o seu
antecessor e o seu sucessor.
*/

import 'dart:io';

void main(List<String> args) {
  print('Digite um numero inteiro: ');

  int num = int.parse(stdin.readLineSync()!);

  int antecessor = num - 1;
  int sucessor = num + 1;

  print("O antecessor de $num é $antecessor.");
  print("O sucessor de $num é $sucessor.");
}
