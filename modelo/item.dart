import 'produto.dart';

class Item {
  Produto? produto;
  int? quantidade;
  double? _preco;

  Item({this.produto, this.quantidade});

  double get preco {
    if (produto != null && _preco == null) {
      _preco = produto!.precoComDesconto;
    }
    return _preco!;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}

main() {
  var item = Item(
    produto: Produto(
      codigo: 1,
      desconto: 0.5,
      nome: 'Caderno',
      preco: 20.00,
    ),
    quantidade: 5,
  );

  print('O valor do item é: ${item.preco}');
  item.preco = 50;
  print('O valor novo é: ${item.preco}');
}
