//Exercicio 1
// import 'dart:io';

// void criarUsuario(String nome, String curso, int idade){
//   print("Usuario: $nome, Curso: $curso, Idade: $idade");
// }

// void main() {
//   print("Digite seu nome:");
//   String nome = stdin.readLineSync()!;

//   print("Digite seu curso:");
//   String curso = stdin.readLineSync()!;

//   print("Digite sua idade:");
//   int idade = int.parse(stdin.readLineSync()!);

//   criarUsuario(nome, curso,idade);
// }

//Exercício 2
// import 'dart:io';

// void calcularTriangulo(double b, double h){
//     double area = (b * h) / 2;
//     print("A área do triângulo é: $area");
// }

// void main(){
//  print("Digite a base do triângulo:");
//  double b = double.parse(stdin.readLineSync()!);

//  print("Digite a altura do triângulo:");
//  double h = double.parse(stdin.readLineSync()!);

//  calcularTriangulo(b,h);
// }

//Exercício 3

// import 'dart:io';

// calcularSalarioLiquido(double salarioBruto){
//     double desconto = salarioBruto * 0.1;
//     double bonificacao = salarioBruto * 0.2;
//     double salarioLiquido = salarioBruto - desconto + bonificacao;
//     print("O salário líquido é: $salarioLiquido");
// }

// void main(){
// print("Digite o salário bruto para que possamos calcular o salário líquido:");
// double salarioBruto = double.parse(stdin.readLineSync()!);
// calcularSalarioLiquido(salarioBruto);
// }

//Exercício 4

// import 'dart:io';

// void main() {
//   double real; 
//   var moeda; 

//   print("Moedas");
//   print("EUR - Euro");
//   print("USD - Dólar");
//   print("CHF - Franco Suíço");

//   print("Digite o valor em reais (R\$) para que seja convertido: ");

//   real = double.parse(stdin.readLineSync()!);

//   print("Escolha a moeda: ");
//   moeda = stdin.readLineSync();

//   switch (moeda?.toUpperCase()) { 
//     case "EUR":
//     case "EURO":
//       double euro = 7;
//       double realEmEuro = real / euro;
//       print("O valor em Euro é: EUR $realEmEuro");
//       break;

//     case "USD":
//     case "DÓLAR":
//     case "DOLAR":
//       double dolar = 6.56;
//       double realEmDolar = real / dolar;
//       print("O valor em Dólar é: USD $realEmDolar");
//       break;

//     case "CHF":
//     case "FRANCO SUÍÇO":
//     case "FRANCO SUICO":
//       double franco = 4.35;
//       double realEmFranco = real / franco;
//       print("O valor em Franco Suíço é: CHF $realEmFranco");
//       break;

//     default:
//       print("Moeda não reconhecida.");
//   }
// }

//Exercício 5
// import 'dart:io';

// void main() {
//   print("Digite a nota do primeiro aluno:");
//   double nota1 = double.parse(stdin.readLineSync()!);

//   print("Digite a nota do segundo aluno:");
//   double nota2 = double.parse(stdin.readLineSync()!);

//   double media = (nota1 + nota2) / 2;

//   print("Média: $media");

//   if (media >= 7) {
//     print("Aprovado");
//   } else if (media >= 4) {
//     print("Exame");
//   } else {
//     print("Reprovado");
//   }
// }

//Exercício 6

// import 'dart:io';

// void main() {
//   print("Digite a idade da primeira pessoa:");
//   int idade1 = int.parse(stdin.readLineSync()!);

//   print("Digite a idade da segunda pessoa:");
//   int idade2 = int.parse(stdin.readLineSync()!);

//   if (idade1 > idade2) {
//     print("A primeira pessoa é mais velha.");
//   } else if (idade1 < idade2) {
//     print("A segunda pessoa é mais velha.");
//   } else {
//     print("As duas pessoas têm a mesma idade.");
//   }
// }


//Exercício 7
// import 'dart:io';

// void main() {
//   print("Digite o valor do primeiro modelo de carro:");
//   double valor1 = double.parse(stdin.readLineSync()!);

//   print("Digite o valor do segundo modelo de carro:");
//   double valor2 = double.parse(stdin.readLineSync()!);

//   print("Digite o valor do terceiro modelo de carro:");
//   double valor3 = double.parse(stdin.readLineSync()!);

//   double maisCaro = valor1;
//   double maisBarato = valor1;

//   if (valor2 > maisCaro) maisCaro = valor2;
//   if (valor3 > maisCaro) maisCaro = valor3;

//   if (valor2 < maisBarato) maisBarato = valor2;
//   if (valor3 < maisBarato) maisBarato = valor3;

//   print("O carro mais caro custa: R\$ $maisCaro");
//   print("O carro mais barato custa: R\$ $maisBarato");
// }

//Exercicio 8
// import 'dart:io';

// void main() {
//   print("Digite a quantidade de litros comprada:");
//   double litros = double.parse(stdin.readLineSync()!);

//   print("Digite o tipo de combustível (E para Etanol, D para Diesel, G para Gasolina):");
//   String tipoCombustivel = stdin.readLineSync()!;

//   double precoLitro;
//   double desconto = 0;
//   double valorTotal;

//   if (tipoCombustivel == "E") {
//     precoLitro = 1.70;
//     if (litros >= 15) {
//       desconto = 0.04;
//     } else {
//       desconto = 0.03;
//     }
//   } else if (tipoCombustivel == "D") {
//     precoLitro = 2.00;
//     if (litros >= 15) {
//       desconto = 0.05;
//     } else {
//       desconto = 0.03;
//     }
//   } else if (tipoCombustivel == "G") {
//     precoLitro = 4.50;
//     if (litros >= 20) {
//       desconto = 0.03; 
//     } else {
//       desconto = 0.0; 
//     }
//   } else {
//     print("Tipo de combustível inválido.");
//     return;
//   }

//   double valorDesconto = precoLitro * litros * desconto;
//   valorTotal = (precoLitro * litros) - valorDesconto;

//   print("O valor a ser pago é: R\$ ${valorTotal.toStringAsFixed(2)}");
// }

//Exercicio 9
// import 'dart:io';

// void main() {
//   print("Digite a quantidade de kWh consumida:");
//   double consumo = double.parse(stdin.readLineSync()!);

//   print("Digite o tipo de instalação (R para Residencial, I para Indústria, C para Comércio):");
//   String tipoInstalacao = stdin.readLineSync()!;

//   double precoUnitario;
//   double valorTotal;

//   if (tipoInstalacao == "R") {
//     if (consumo <= 500) {
//       precoUnitario = 0.50;
//     } else {
//       precoUnitario = 0.70;
//     }
//   } else if (tipoInstalacao == "C") {
//     if (consumo <= 1000) {
//       precoUnitario = 0.65;
//     } else {
//       precoUnitario = 0.60;
//     }
//   } else if (tipoInstalacao == "I") {
//     if (consumo <= 5000) {
//       precoUnitario = 0.55;
//     } else {
//       precoUnitario = 0.50;
//     }
//   } else {
//     print("Tipo de instalação inválido.");
//     return;
//   }

//   valorTotal = precoUnitario * consumo;

//   print("O valor a ser pago pelo fornecimento de energia elétrica é: R\$ ${valorTotal.toStringAsFixed(2)}");
// }

// Exercicio 10
import 'dart:io';

void main() {
  print("Digite o primeiro valor:");
  double valor1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo valor:");
  double valor2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro valor:");
  double valor3 = double.parse(stdin.readLineSync()!);

  print("Digite o quarto valor:");
  double valor4 = double.parse(stdin.readLineSync()!);

  print("Escolha a operação (+, -, *, /):");
  String operacao = stdin.readLineSync()!;

  double resultado;

  switch (operacao) {
    case "+":
      resultado = valor1 + valor2 + valor3 + valor4;
      break;
    case "-":
      resultado = valor1 - valor2 - valor3 - valor4;
      break;
    case "*":
      resultado = valor1 * valor2 * valor3 * valor4;
      break;
    case "/":
      if (valor2 != 0 && valor3 != 0 && valor4 != 0) {
        resultado = valor1 / valor2 / valor3 / valor4;
      } else {
        print("Erro: Divisão por zero.");
        return;
      }
      break;
    default:
      print("Operação inválida.");
      return;
  }

  print("O resultado da operação é: $resultado");
}

//()
//$
// import 'dart:io';

// void main(){

// }