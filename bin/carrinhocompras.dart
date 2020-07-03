import 'dart:io';

void main() {
  
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("Adicionar Produtos à Lista");
    //print(produtos.length);
    String text = stdin.readLineSync();
    if (text == "sair") {
      print("==== Terminou o programa ====");
      condicao = false;
    } else if (text == "imprimir") {
      if (produtos.length != 0) {
        for (var i = 0; i < produtos.length; i++) {
          print("ITEM $i - ${produtos[i]}");
        }
      } else {
        print("=== Lista vazia! ===");
      }
    } else if (text == "remover") {
      print("=== Qual item deseja remover da lista? ===");
      for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i - ${produtos[i]}");
      }
      int item = int.parse(stdin.readLineSync());
      produtos.removeAt(item);
      print("=== Item excluído!");
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}
