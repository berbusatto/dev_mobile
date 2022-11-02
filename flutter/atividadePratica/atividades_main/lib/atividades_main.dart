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

