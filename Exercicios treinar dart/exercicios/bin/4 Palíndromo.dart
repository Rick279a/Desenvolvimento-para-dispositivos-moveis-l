/*
Palíndromo: Desenvolva um programa que verifica se uma
palavra fornecida é um palíndromo.
*/

import 'dart:io';

void main() {
  bool ehPalindromo(String palavra) {
    palavra = palavra.replaceAll(' ', '').toLowerCase();

    return palavra == palavra.split('').reversed.join('');
  }

  stdout.write('Digite uma palavra para verificar se é um palíndromo: ');
  String palavra = stdin.readLineSync()!;

  if (ehPalindromo(palavra)) {
    print('$palavra é um palíndromo.');
  } else {
    print('$palavra não é um palíndromo.');
  }
}
