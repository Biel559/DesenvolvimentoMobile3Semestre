//Exemplo de função com parametro nomeado
//13.02.2025
//Função com parametro obrigatorio
//Parametro nomeado é preciso colocar criarUsuario(variavel:valor)
void criarUsuario({required String nome, int?idade}){
  print("Usuario: $nome, Idade $idade");
}

void main(){
criarUsuario(nome: "Daniel", idade:18);
}