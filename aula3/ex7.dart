



import 'dart:io';
void main(){
print("Digite seu nome: ");
String nome = stdin.readLineSync()!;
saudar(nome);
}

//Função do tp String
void saudar(String nome){
print("Olá $nome ! Bem Vindo !");
}