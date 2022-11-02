// Desenvolva um programa utilizando a linguagem DART que leia dois números inteiros e apresente
// a soma, subtração, divisão e multiplicação dos mesmos.

import 'dart:io';
import 'package:atividades_main/atividades_main.dart';

void main() {
  //ATIVIDADE 01
  print("ATIVIDADE 01");
  print("Digite um número: ");
  double number1 = double.parse(stdin.readLineSync()!);
  print("Digite outro número: ");
  double number2 = double.parse(stdin.readLineSync()!);

  print(addition(number1, number2));
  print(subtration(number1, number2));
  print(multiplication(number1, number2));
  print(division(number1, number2));

  // ATIVIDADE 02
  print("ATIVIDADE 02");
  print("Digite um número: ");
  int? number = int.parse(stdin.readLineSync()!);
  print(sucessor(number));
  print(antecessor(number));
}
