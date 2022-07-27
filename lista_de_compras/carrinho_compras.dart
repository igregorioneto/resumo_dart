import 'dart:io';

List<String> produtos = [];

main() {
  bool condicao = true;

  while (condicao) {
    print("====  ADICIONE UM PRODUTO  ====");
    String text = stdin.readLineSync() ?? "";
    if (text == "sair") {
      print("==== TERMINOU O PROGRAMA ====");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
    } else if (text == "remover") {
      remover();
    } else if (text == "atualizar") {
      imprimir();
      print("==== Qual item deseja atualizar?");
      String input = stdin.readLineSync() ?? "";
      int item = int.parse(input);
      produtos[item] = text;
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

remover() {
  print("==== Qual item deseja remover?");
  String input = stdin.readLineSync() ?? "";
  int item = int.parse(input);
  produtos.removeAt(item);
  print("==== ITEM REMOVIDO ====");
}
