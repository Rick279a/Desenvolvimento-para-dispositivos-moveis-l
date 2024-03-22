/*
Verificação de Números Primos: Crie um programa que
determine se um número informado é primo ou não.
*/

import 'dart:io';

void main() {
  stdout.write("Digite um número para verificar se é primo: ");
  int num = int.parse(stdin.readLineSync()!);

  bool ehPrimo = true;

  if (num <= 1) {
    ehPrimo = false;
  } else {
    for (int i = 2; i <= num / 2; i++) {
      if (num % i == 0) {
        ehPrimo = false;
        break;
      }
    }
  }

  if (ehPrimo) {
    print("$num é um número primo.");
  } else {
    print("$num não é um número primo.");
  }
}
