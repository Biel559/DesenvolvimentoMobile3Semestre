import 'dart:io';

void main (){
  //escreve mensagem no terminal
  print("Digite o número n1");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número");
  int n2 = int.parse(stdin.readLineSync()!); 
  int res = n1+n2;
  print("Resultado: $res");
}