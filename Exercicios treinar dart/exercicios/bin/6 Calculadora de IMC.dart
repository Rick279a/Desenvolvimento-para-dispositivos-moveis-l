/*
Calculadora de IMC: Implemente um programa que calcula
o Índice de Massa Corporal (IMC) com base no peso e altura.
*/

import 'dart:io';

void main() {
  print("Digite o peso em quilogramas (usando .): ");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite a altura em metros (usando .): ");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print("Seu IMC é: $imc");
  print("Condição: ${interpretarIMC(imc)}");
}

String interpretarIMC(double imc) {
  if (imc < 18.5) {
    return "Abaixo do peso";
  } else if (imc >= 18.5 && imc < 25) {
    return "Peso normal";
  } else if (imc >= 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade Grau 1";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade Grau 2";
  } else {
    return "Obesidade Grau 3";
  }
}
