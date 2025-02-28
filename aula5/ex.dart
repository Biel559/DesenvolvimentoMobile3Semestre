/* 
Exemplo 1 - Programação orientada a objeto
27.02.2025
*/

// Cria a classe chamada casa

class Casa{
  // String cor cria o atributo cor da casa

  String? cor;
  int? qtde_p;

  // Cria o método abrir porta

  void abrirporta(){
    print("A porta está aberta na casa de cor $cor com $qtde_p portas");
  }
}

void main(){
  // Instancio o objeto chamado minhaCasa
  Casa minhaCasa = Casa();
  minhaCasa.cor = "Azul";
  minhaCasa.qtde_p = 33;
  minhaCasa.abrirporta();
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas: ${minhaCasa.qtde_p}");
}