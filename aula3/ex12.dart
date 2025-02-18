//Função Assincrona
//Utilizada para respostas que não são instantaneas
//13.02.2025

Future<void> carregarDados()async{
  print("Carregando ");

//Futuredelayed atraso para simular a respota de um api
await Future.delayed(Duration(seconds:2));
  print("Dados carregados");
}

void main()async{
  await carregarDados();
}