import 'dart:io';

void main(){
String nome, curso;
int idade;
print("Entre com o nome: ");
nome = stdin.readLineSync()!;
print("Entre com o curso: ");
curso = stdin.readLineSync()!;
print("Entre com a idade: ");
idade = int.parse(stdin.readLineSync()!);
print("Usuário: $nome \n Curso: $curso \n Idade: $idade");
}



