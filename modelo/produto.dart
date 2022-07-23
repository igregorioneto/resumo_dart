class Produto {
  int? codigo;
  String? nome;
  double? preco;
  double? desconto;

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  double get precoComDesconto {
    return (1 - desconto!) * preco!;
  }
}

main() {
  var produto = Produto(codigo: 1, nome: 'Caneta', desconto: 0.5, preco: 20);
  print('O valor do produto é: R\$${produto.precoComDesconto}');
}
