//Exemplo de função com parametro nomeado
//13.02.2025

//Required parametro obrigatorio

//Função com parametro obrigatorio
//Parametro nomeado é preciso colocar criarUsuario(variavel:valor)
void criarUsuario(int? idade,{required String nome }){
  print("Idade: $idade, Usuario: $nome ");
}

void main(){
criarUsuario(18, nome: "Daniel"); //Chaves ({}) faz com que tenha que chamar o parametro la embaixo no código.
}