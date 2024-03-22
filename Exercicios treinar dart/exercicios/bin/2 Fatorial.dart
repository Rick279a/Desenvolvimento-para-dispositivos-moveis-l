/*
Fatorial: Implemente um algoritmo para calcular o fatorial de
um número fornecido.
*/

import 'dart:io';

void main() {
  stdout.write("Digite um número para calcular o fatorial: ");
  int numero = int.parse(stdin.readLineSync()!);
  int fatorial = 1;

  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }

  print("O fatorial de $numero é $fatorial");
}
