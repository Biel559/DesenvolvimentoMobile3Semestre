/* 
Exemplo classe e objeto
Herança
27.02.2025
*/

// Classe mae
import 'dart:io';

class Animal{

  String? nome;
  int? idade;
  // Construtor
  Animal(this.nome, this.idade);
  void dormir(){
    print("O animal está dormindo");
  }
}

// classe filha
class Cachorro extends Animal{
  // Super construtor para passar o parametro da classe mae para
  // a classe filha
  Cachorro(nome, idade):super(nome,idade);
  void latir(){
    print("O animal ${nome} está latindo");
  }
}

class Tigre extends Animal{
  Tigre(nome, idade, this.cor):super(nome,idade);
  String? cor;

  void atacar(){
    print("O animal Tigre $nome atacou");
  }

}

void main(){
  Cachorro Rocky = Cachorro("Rocky",2);
  Rocky.nome = "Rocky";
  Rocky.idade = 2;
  Rocky.latir();
  Rocky.dormir();
  Tigre Memphins = Tigre("Memphins",30,"Branco");
  Memphins.nome = "Memphins";
  Memphins.idade = 30;
  Memphins.atacar();
}