import 'dart:io';
import 'dart:math';

// ABSTRAINDO STDIN PARA CADA TIPO
double inputDouble() {
  return double.parse(stdin.readLineSync()!);
}

int inputInt() {
  return int.parse(stdin.readLineSync()!);
}

// EXERCÍCIO 01
double addition(double n1, double n2) {
  return n1 + n2;
}

double subtration(double n1, double n2) {
  return n1 - n2;
}

double multiplication(double n1, double n2) {
  return n1 * n2;
}

double division(double n1, double n2) {
  double? res = 0;
  (n2 != 0) ? res = n1 / n2 : print("Impossível dividir por zero!");
  return res;
}

// EXERCÍCIO 02
int sucessor(int number) {
  return number + 1;
}

int antecessor(int number) {
  return number - 1;
}

// EXERCÍCIO 03
double calculaAreaRetangulo(double base, double altura) {
  return base * altura;
}

double calculaPerimetroRetangulo(double base, double altura) {
  return 2 * (base + altura);
}

double calculaDiagonalRetangulo(double base, double altura) {
  return sqrt(pow(base, 2) + pow(altura, 2));
}

// EXERCICIO 04
double calculaAreaTriangulo(double base, double altura) {
  return (base * altura) / 2;
}

// EXERCICIO 05
double calculaVolumeCilindro(double raio, double altura) {
  return pi * (pow(raio, 2) * altura);
}

// EXERCICIO 06
double calculaDistanciaPontos(double xP1, double yP1, double xP2, double yP2) {
  return sqrt(pow(xP2 - xP1, 2) + pow(yP2 - yP1, 2));
}

// EXERCICIO 07
double calculaIMC(double peso, altura) {
  return peso / (pow(altura, 2));
}

// EXERCICIO 08
int calculaIdadeDias(int anos, int meses, int dias) {
  return (anos * 365) + (meses * 30) + dias;
}

// EXERCICIO 09
int calculaTotalAnos(int totalDias) {
  return totalDias ~/ 365;
}

int calculaTotalMeses(int totalDias, int totalAnos) {
  return (totalDias % 365) % 12;
}

int calculaDiasRestantes(int totalDias) {
  return (totalDias % 365) % 30;
}

// EXERCICIO 10
double calculaCreditoCliente(double saldo) {
  if (saldo > 400) {
    return saldo * 0.3;
  } else if (saldo > 300) {
    return saldo * 0.25;
  } else if (saldo > 200) {
    return saldo * 0.2;
  } else {
    return saldo * 0.1;
  }
}

// EXERCICIO 11
String calculaTipoTriangulo(int ladoA, int ladoB, int ladoC) {
  if (ladoA == ladoB && ladoB == ladoC) {
    return "Equilátero";
  } else if (ladoA == ladoB || ladoA == ladoC) {
    return "Isósceles";
  } else {
    return "Escaleno";
  }
}

// EXERCICIO 12
String verificaNumeroInserido(int numero) {
  if (numero == 5) {
    return "Número igual a 5";
  } else if (numero == 200) {
    return "Número igual a 200";
  } else if (numero == 400) {
    return "Número igual a 400";
  } else if (numero >= 500 && numero <= 1000) {
    return "Número consta entre 500 e 1000";
  } else {
    return "Número fora do escopo.";
  }
}

// EXERCICIO 13
void calculaUmACem() {
  print("-------");
  for (int i = 1; i <= 100; i++) {
    print(i);
  }
}

// EXERCICIO 14
void calculaCemAUm() {
  for (int j = 100; j > 0; j--) {
    print(j);
  }
}

// EXERCICIO 15
void preencheLista10(List lista) {
  for (int i = 0; i < 10; i++) {
    print("Digite um número");
    double num = inputDouble();
    lista.add(num / 2);
  }
}

void mostraLista(List lista) {
  for (int i = 0; i < lista.length; i++) {
    print(lista[i]);
  }
}

// EXERCICIO 16
void preencheLista15(lista) {
  for (int i = 0; i < 15; i++) {
    print("Digite um número");
    double num = inputDouble();
    lista.add(sqrt(num));
  }
}

// EXERCICIO 17
void calculaIntervalo(int numb1, int numb2) {
  for (int i = numb1 + 1; i < numb2; i++) {
    print(i);
  }
}
