//Exemplo 3 - Switch Case
//13.02.2025

import 'dart:io'; //Biblioteca para permitir que o usuario digite

void main(){
  double n1,n2,res; //Armazena os números
    var op; //Variavel que armazena a operação escolhida pelo usuário

  print("Operacoes");
  print("+ Soma");
  print("- Subtração");
  print("/ Divisão");
  print("* Multiplicação");

  print("Digite o primeiro número: ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo número: ");
  n2 = double.parse(stdin.readLineSync()!);
  print("Escolha a operação: ");
  op = stdin.readLineSync();

  switch (op){
    case "Soma" || "+" || "soma": 
      res = n1+n2;
      print("Resultado: $res ");
      break;

    case "Subtração" || "-" || "subtracao":
      res = n1-n2;
      print("Resultado: $res ");
      break;

    case "Divisão" || "/" || "divisao":
    if(n2!=0){
      res = n1/n2;
      print("Resultado: $res ");
    }else{
      print("Divisão por 0 tende a infinito \n digite um valor válido");
      print("Digite o segundo número: ");
      n2 = double.parse(stdin.readLineSync()!);
       if(n2!=0){
        res = n1/n2;
        print("Resultado: $res ");
       }
    }
    break;
    case "Multiplicação" || "*" || "":
      res = n1*n2;
      print("Resultado: $res ");
      break;

      Default: print("Operação Inválida");
    };
    
}

