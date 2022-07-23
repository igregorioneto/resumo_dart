int soma(int a, int b) {
  return a + b;
}

int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

main() {
  final result = exec(2, 3, (a, b) {
    return a * b;
  });

  final result2 = exec(2, 3, (a, b) => a * b);

  print('O resultado é: ${soma(2, 3)}');

  print('O resultado é: $result');
  print('O resultado é: $result2');
}
