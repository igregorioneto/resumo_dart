import 'cliente.dart';
import 'item.dart';
import 'produto.dart';

class Venda {
  Cliente? cliente;
  List<Item> itens;

  Venda({this.cliente, this.itens = const []});

  double get valorTotalSemReducer {
    double total = 0.0;
    for (var valor in itens) {
      total += (valor.preco * valor.quantidade!);
    }
    return total;
  }

  double get valorTotal {
    return itens.map((i) => i.quantidade! * i.preco).reduce((t, a) => t + a);
  }
}

main() {
  var venda = Venda(
    cliente: Cliente(
      nome: 'João',
      cpf: '222.222.222-22',
    ),
    itens: <Item>[
      Item(
        produto: Produto(
          codigo: 1,
          desconto: 0.5,
          preco: 20,
          nome: 'caderno',
        ),
        quantidade: 5,
      ),
      Item(
        produto: Produto(
          codigo: 2,
          desconto: 0.7,
          nome: 'Caneta',
          preco: 10,
        ),
        quantidade: 5,
      ),
    ],
  );

  print('O valor do produto é ${venda.valorTotal}');
  print('O valor do produto é ${venda.valorTotalSemReducer}');
}
