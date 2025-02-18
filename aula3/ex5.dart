//Ex 5 - For
//13.02.2025
import 'dart:io';

void main(){
  int res = 0, n;
  print("Digite o número que deseja saber a tabuada");
  n= int.parse(stdin.readLineSync()!);

for(int cont=0;cont<11;cont++){
    res = n*cont;
    print("Tabuada do $n");
    print("$n * $cont = $res");
  }
}
