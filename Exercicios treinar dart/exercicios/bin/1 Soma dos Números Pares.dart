/*
Soma dos Números Pares: Escreva um programa que calcule
a soma dos números pares de 1 a N, onde N é fornecido.
*/

import 'dart:io';

void main() {
  stdout.write("Digite o valor de N: ");
  int n = int.parse(stdin.readLineSync()!);

  int soma = 0;

  for (int i = 2; i <= n; i += 2) {
    soma += i;
  }

  print("A soma dos números pares de 1 até $n é: $soma");
}
