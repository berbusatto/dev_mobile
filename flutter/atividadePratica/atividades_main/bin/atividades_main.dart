import 'dart:io';
import 'dart:math';
import 'package:atividades_main/atividades_main.dart';

void main() {
  String response = '';

  do {
    print("Escolha o exercício pelo número (1 a 17): ");
    int selectedOption = int.parse(stdin.readLineSync()!);

    switch (selectedOption) {
      case 1:
        {
          // EXERCÍCIO 01
          // Desenvolva um programa utilizando a linguagem DART que leia dois números inteiros e apresente
          // a soma, subtração, divisão e multiplicação dos mesmos.

          print("\n-------------------------");
          print("EXERCÍCIO 01");

          print("Digite um número: ");
          double number1 = inputDouble();
          print("Digite outro número: ");
          double number2 = inputDouble();

          print("Soma: ${addition(number1, number2)}");
          print("Subtração: ${subtration(number1, number2)}");
          print("Multplicação: ${multiplication(number1, number2)}");
          print("Divisão: ${division(number1, number2)}");
          break;
        }

      case 2:
        {
          // EXERCÍCIO 02
          // Desenvolva um programa utilizando a linguagem DART que leia um número inteiro e imprimir seu
          // sucessor e antecessor

          print("\n-------------------------");
          print("EXERCÍCIO 02");

          print("Digite um número: ");
          int? number = inputInt();

          print("O seu sucessor é:  ${sucessor(number).toString()}");
          print("O seu antecessor é:  ${antecessor(number).toString()}");

          break;
        }
      case 3:
        {
          // EXERCÍCIO 03
          // Desenvolva um programa utilizando a linguagem DART que leia a base e a altura de um retângulo e
          // apresente o perímetro, a área e a diagonal, dada as fórmulas:
          // perimetro = 2* (base + altura)
          // area = base * altura
          // diagonal = sqrt(base² + altura²)

          print("\n-------------------------");
          print("EXERCÍCIO 03");

          print("Digite o valor da base de um retângulo");
          double base = inputDouble();
          print("Digite o valor da altura de um retângulo");
          double altura = inputDouble();

          print("Área: ${calculaAreaRetangulo(base, altura)}");
          print("Perímetro: ${calculaPerimetroRetangulo(base, altura)}");
          print("Diagonal: ${calculaDiagonalRetangulo(base, altura)}");

          break;
        }

      case 4:
        {
          // EXERCICIO 04
          // Desenvolva um programa utilizando a linguagem DART que leia a base e a altura de um triângulo,
          // calcule e apresente a área dele
          // area = (a*b) /2

          print("\n-------------------------");
          print("EXERCÍCIO 04");

          print("Digite o valor da base de um triangulo");
          double base = inputDouble();

          print("Digite o valor da altura de um triangulo");
          double altura = inputDouble();

          print("A área do triangulo é ${calculaAreaTriangulo(base, altura)}");

          break;
        }

      case 5:
        {
          // EXERCICIO 05
          // Desenvolva um programa utilizando a linguagem DART que leia o valor da altura e o raio de uma
          // lata de óleo, e então calcule o seu volume, utilizando a fórmula
          // volume = pi * raio² * altura

          print("Digite o valor do raio de uma lata de óleo");
          double raio = inputDouble();

          print("Digite o valor da altura de uma lata de óleo");
          double altura = inputDouble();

          print("O volume da lata é de ${calculaVolumeCilindro(raio, altura)}");

          break;
        }

      case 6:
        {
          // EXERCICIO 06
          //Desenvolva um programa utilizando a linguagem DART que, tendo como dados de entrada dois
          // pontos quaisquer no plano, P(x1,y1) e P(x2,y2), escreva a distância entre eles. A fórmula que efetua tal
          // cálculo é: d = sqrt( (x2 - x1)²  + (y2 - y1)² )

          print("Digite a localização de um ponto");
          print("Valor do eixo X");
          double xP1 = inputDouble();
          print("Valor do eixo Y");
          double yP1 = inputDouble();

          print("Digite a localização de outro ponto");
          print("Valor do eixo X");
          double xP2 = inputDouble();
          print("Valor do eixo Y");
          double yP2 = inputDouble();

          print(
              "A distância entre os dois pontos é ${calculaDistanciaPontos(xP1, yP1, xP2, yP2)}");
          break;
        }

      case 7:
        {
          // EXERCICIO 07
          // Tendo como dados de entrada a altura e o peso de uma pessoa, desenvolva um programa utilizando
          // a linguagem DART que calcule seu peso ideal, utilizando a seguinte fórmula: IMC = peso / (altura2)

          print("Digite o peso");
          double peso = inputDouble();
          print("Digite a altura");
          double altura = inputDouble();

          print("O IMC é ${calculaIMC(peso, altura)}");

          break;
        }

      case 8:
        {
          // EXERICIO 08
          // Desenvolva um programa utilizando a linguagem DART que leia a idade de uma pessoa expressa
          // em anos, meses e dias e mostre-a expressa apenas em dias.

          print("Quantos anos voce tem?");
          int anos = inputInt();
          print("Quantos anos voce tem?");
          int meses = inputInt();
          print("Quantos anos voce tem?");
          int dias = inputInt();

          print("São ${calculaIdadeDias(anos, meses, dias)} dias");

          break;
        }

      case 9:
        {
          // EXERCÍCIO 09
          // Desenvolva um programa utilizando a linguagem DART que leia a idade de uma pessoa expressa
          // em dias e mostre-a expressa em anos, meses e dias

          print("Quantos dias você tem?");
          int totalDias = inputInt();

          int totalAnos = calculaTotalAnos(totalDias);
          int totalMeses = calculaTotalMeses(totalDias, totalAnos);
          int diasRestantes = calculaDiasRestantes(totalDias);

          print("Anos: $totalAnos");
          print("Meses: $totalMeses");
          print("Dias: $diasRestantes");

          break;
        }

      case 10:
        {
          // EXERCICIO 10
          // Um banco concederá um crédito especial aos seus clientes de acordo com o saldo médio no último
          // ano. Faça um programa que receba o saldo médio de um cliente e calcule o valor do crédito, de acordo
          // com a figura abaixo. Mostre o saldo médio e o valor do crédito

          print("Digite o saldo médio do cliente");
          double saldo = inputDouble();

          print(
              "O crédito do cliente pode ser de ${calculaCreditoCliente(saldo)}");
          break;
        }

      case 11:
        {
          // EXERCICIO 11
          // Ler três valores, verificar se os mesmos podem formar os lados de um triângulo e, caso formem,
          // apresentar o tipo de triângulo.

          print("Digite o valor de um dos lados de um triangulo");
          int ladoA = inputInt();

          print("Digite o valor de um dos lados de um triangulo");
          int ladoB = inputInt();

          print("Digite o valor de um dos lados de um triangulo");
          int ladoC = inputInt();

          print(calculaTipoTriangulo(ladoA, ladoB, ladoC));

          break;
        }

      case 12:
        {
          // EXERCICIO 12
          // Ler um número e imprimir se ele é igual a 5, a 200, a 400, se está no intervalo entre 500 e 1000,
          // inclusive, ou se ele está fora dos escopos anteriores

          print("Digite um número");
          int numero = inputInt();
          print(verificaNumeroInserido(numero));
          break;
        }

      case 13:
        {
          // EXERCICIO 13
          // Imprimir todos os números de 1 até 100.
          calculaUmACem();
          break;
        }

      case 14:
        {
          // EXERCICIO 14
          // Imprimir todos os números de 100 até 1
          calculaCemAUm();
          break;
        }

      case 15:
        {
          // EXERCICIO 15
          // Entrar com 10 números e imprimir a metade de cada número.
          List listaMetades = [];
          preencheLista10(listaMetades);
          mostraLista(listaMetades);

          break;
        }

      case 16:
        {
          // EXERCICIO 16
          // Entrar com 15 números e imprimir a raiz quadrada de cada número
          List listaRaizes = [];
          preencheLista15(listaRaizes);
          mostraLista(listaRaizes);
          break;
        }

      case 17:
        {
          // EXERCICIO 17
          // Entrar com dois números e imprimir todos os números no intervalo fechado, do menor para o
          // maior.

          print("Digite um número");
          int numb1 = inputInt();
          print("Digite um número");
          int numb2 = inputInt();

          calculaIntervalo(numb1, numb2);

          break;
        }
    }

    print("Deseja acessar outro exercício? S ou N: ");
    response = stdin.readLineSync()!.toLowerCase();
  } while (response == 's');
}
