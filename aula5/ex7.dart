/* 
Exemplo Construtor 
27.02.2025
*/

class Fruta{
  String? sabor;
  String? nome;
  String? cor;
  double? peso;
  int? diasDesdeColheita;
  bool isMadura = false;

  // Cria Construtor

  Fruta(this.sabor, this.nome, this.cor, this.peso, this.diasDesdeColheita);

  void verificarMaturidade(int diasParaMadura){
    if(diasDesdeColheita>=diasParaMadura){
      print("A $nome esta madura");
      isMadura = true;
    }
    else{
      print("A fruta não está madura");
      isMadura = false;
    }
  }
}

void main(){
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificarMaturidade(6);
}