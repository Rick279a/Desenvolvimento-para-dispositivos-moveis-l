/*
Faça um algoritmo que leia um valor qualquer e imprima na tela com um 
reajuste de 5%.
*/

import 'dart:io';

void main(List<String> args) {
  print('Digite um numero inteiro: ');

  int num = int.parse(stdin.readLineSync()!);

  double reajuste = num * 0.5;

  double valorReajustado = num + reajuste;

  print('O valor do reajuste de 5% é: $reajuste');
  print('Novo valor é de: $valorReajustado');
}
