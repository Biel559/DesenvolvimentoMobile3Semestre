// Exemplo de função com parametros 

import "dart:io";

void exibirmensagem(String mensagem,[String remetente = "Anonimo"]){
  print("Mensagem de $remetente: $mensagem");
}

void main(){
  exibirmensagem("Bem vindo ao curso de Mobile com Flutter");
  exibirmensagem("Bem vindo ao curso de Mobile com Flutter", "Prof. Daniel");
}