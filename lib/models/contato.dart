
class Contato{
  final String nome;
  final int numero;

  Contato(this.nome, this.numero);

  @override
  String toString() {
    // TODO: implement toString
    return "Contato: {nome: $nome, numero: $numero}";
  }
}