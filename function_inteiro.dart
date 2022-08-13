import 'dart:io';
/* Implemente uma função que receba um número inteiro positivo 
e retorne o somatório de todos os valores inteiros divisíveis por 3 ou 5 
que sejam inferiores ao
número passado.*/

main() {
  print('Digite um número:');

  final String? numeroString = stdin.readLineSync();

  final int? numeroInteiro = int.parse(numeroString!);

  final resultado = somaDivisiveis(numero: numeroInteiro);
  print("soma: $resultado");
}

int somaDivisiveis({int? numero}) {
  int soma = 0;

  for (int i = 0; i < numero!; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }
  return soma;
}
