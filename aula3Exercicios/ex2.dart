import 'dart:io';

void main(){
  double a, b, h;
  print("Entre com a Base: ");
  b = double.parse(stdin.readLineSync()!);
  print("Entre com a Altura: ");
  h = double.parse(stdin.readLineSync()!);
  a = (b*h)/2;
  print("Resultado: $a");
}