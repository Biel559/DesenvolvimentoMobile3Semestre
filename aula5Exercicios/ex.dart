// Exercício 1
// class Animal {
//   String? nome;
//   int? idade;
//   String? cor;
//   String? raca;
// }

// void main() {
//   Animal animal = Animal(); 
//   animal.nome = "Rex";
//   animal.idade = 5;
//   animal.cor = "Marrom";
//   animal.raca = "Labrador";

//   print("Nome: ${animal.nome}");
//   print("Idade: ${animal.idade}");
//   print("Cor: ${animal.cor}");
//   print("Raça: ${animal.raca}");
// }

// Exercício 2

// class Filha extends Animal {
//   String tipo;
//   double peso;

//   Filha(this.tipo, this.peso);

//   void acordou() {
//     print("$tipo acordou!");
//   }

//   void dormiu() {
//     print("$tipo dormiu!");
//   }
// }

// void main() {
//   Filha passaro = Filha("Pássaro", 0.5);
//   Filha cachorro = Filha("Cachorro", 10.0);
//   Filha tigre = Filha("Tigre", 150.0);
//   Filha peixe = Filha("Peixe", 2.0);

//   passaro.acordou();
//   cachorro.dormiu();
//   tigre.acordou();
//   peixe.dormiu();
// }

// Exercício 3
// class Maquinas {
//   String nome;
//   int quantidadeEixos;
//   int rotacoesPorMinuto;
//   double consumoEnergia;

//   Maquinas(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

//   void ligar() {
//     print("$nome ligada.");
//   }

//   void desligar() {
//     print("$nome desligada.");
//   }

//   void ajustarVelocidade(int novaVelocidade) {
//     rotacoesPorMinuto = novaVelocidade;
//     print("Velocidade ajustada para $rotacoesPorMinuto RPM.");
//   }
// }

// class Furadeira extends Maquinas {
//   Furadeira(String nome, int rotacoesPorMinuto, double consumoEnergia)
//       : super(nome, 1, rotacoesPorMinuto, consumoEnergia);
// }

// void main() {
//   Furadeira furadeira = Furadeira("Furadeira Bosch", 3000, 1.5);

//   furadeira.ligar();
//   furadeira.ajustarVelocidade(4000);
//   furadeira.desligar();
// }

// Exercício 4
class Produtos {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  Produtos(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  void ligar() {
    print("$nome ligado.");
  }

  void desligar() {
    print("$nome desligado.");
  }

  void ajustarTemperatura(double setpoint) {
    print("Temperatura ajustada para $setpoint°C em $nome.");
  }
}

class Fritadeira extends Produtos {
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);
}

class Televisao extends Produtos {
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);
}

class ArCondicionado extends Produtos {
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);
}

void main() {
  Fritadeira fritadeira = Fritadeira("Fritadeira Air Fryer", 10, 399.99, "Wi-Fi", 1.2);
  Televisao tv = Televisao("Smart TV Samsung", 5, 2499.99, "Bluetooth", 0.5);
  ArCondicionado ar = ArCondicionado("Ar-Condicionado LG", 3, 2999.99, "Wi-Fi", 2.0);

  fritadeira.ligar();
  fritadeira.ajustarTemperatura(180);
  fritadeira.desligar();

  tv.ligar();
  tv.desligar();

  ar.ligar();
  ar.ajustarTemperatura(22);
  ar.desligar();
}
