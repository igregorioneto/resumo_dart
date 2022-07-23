imprimirProduto(int quantidade, {String? nome, double? preco}) {
  for (var i = 0; i < quantidade; i++) {
    print('O Produto $nome tem o preco R\$$preco!!!');
  }
}

class Produto {
  late String nome;
  late double preco;
}

class Carro {
  late String nome;
  String? marca;
  late double preco;

  Carro({required this.nome, this.marca, this.preco = 0});
}

main() {}
