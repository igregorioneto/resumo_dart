main() {

  Set<int> conjunto = {0,1,2,3,4,4,4,4};
  print(conjunto.length);

  print(conjunto is Set);

  Map<String, double> notaDosAlunos = {
    'Ana': 9.7,
    'Carlos': 8.5,
    'Vitória': 10
  };

  for(var nota in notaDosAlunos.entries) {
    print('${nota.key} = ${nota.value}');
  }

  for(var value in notaDosAlunos.values) {
    print('$value');
  }

  for(var key in notaDosAlunos.keys) {
    print('$key');
  }
  
}