import 'dart:io';

void main (){
  //escreve mensagem no terminal
  print("Digite seu nome: ");
  String nome = stdin.readLineSync()!;
  print("$nome");
  // escreve mensagem no terminal
  print("Digite sua idade: ");
  String idade = stdin.readLineSync()!;
  print("Idade: $idade");
}