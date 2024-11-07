import "dart:io";

void main() {
  print("Digite seu nome: ");
  String nome = stdin.readLineSync()!;
  nome = (nome.isEmpty) ? "Usuário desconhecido" : nome;

  print("Digite seu peso: ");
  String pesoInput = stdin.readLineSync()!;
  if (pesoInput.isEmpty ||
      double.tryParse(pesoInput) == null ||
      double.parse(pesoInput) <= 0) {
    print("Peso inválido.");
    return;
  }
  double peso = double.parse(pesoInput);

  print("Digite sua altura: ");
  String alturaInput = stdin.readLineSync()!;

  if (alturaInput.isEmpty ||
      double.tryParse(alturaInput) == null ||
      double.parse(alturaInput) <= 0) {
    print("Altura inválida.");
    return;
  }
  double altura = double.parse(alturaInput);

  Pessoa usuario = Pessoa(nome, peso, altura);

  print(usuario.calcularImc());
}

class Pessoa {
  String nome;
  double peso;
  double altura;
  double? imc;
  Pessoa(this.nome, this.peso, this.altura);

  String calcularImc() {
    imc = peso / (altura * altura);
    return '${nome} seu imc é: ${imc?.toStringAsFixed(2)}';
  }
}
