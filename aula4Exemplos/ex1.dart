import 'dart:io';

void main(){
  String nome;
  int idade;
  print("Digite seu nome");
  nome = stdin.readLineSync()!; 
  print("Digite sua idade");
  idade= int.parse(stdin.readLineSync()!);
  print("Olá $nome e idade $idade");
}