//Digitar dois númerose calcular a média, se não reprovado

//13.02.2025
import "dart:io";
void main(){
  double n1,n2,res;
  print("Digite o primeiro número: ");
  //Converte de String para Double
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo número: ");
  n2 = double.parse(stdin.readLineSync()!);
  res = (n1+n2)/2;
  print("Média: $res");
  if(res>=5){
    print("Aluno Aprovado");
  }else{
    print("Aluno Reprovado");
  }

}