class Cliente {
  String? nome;
  String? cpf;

  Cliente({this.nome, this.cpf});
}

main() {
  var cliente = Cliente(
    nome: 'João',
    cpf: '111.111.111-11',
  );

  print('nome ${cliente.nome}, cpf ${cliente.cpf}');
}
