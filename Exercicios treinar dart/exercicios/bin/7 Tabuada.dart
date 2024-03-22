/*
Tabuada: Escreva um programa que exiba a tabuada de
multiplicação para um número escolhido.
*/

void main() {
  int numero = 62;

  print('Tabuada de multiplicação para o número $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}
