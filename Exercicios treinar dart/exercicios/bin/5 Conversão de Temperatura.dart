/*
Conversão de Temperatura: Escreva um programa que
converta uma temperatura de Celsius para Fahrenheit.
*/

import 'dart:io';

void main() {
  stdout.write('Digite a temperatura em Celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print('$celsius graus Celsius é equivalente a $fahrenheit graus Fahrenheit.');
}
