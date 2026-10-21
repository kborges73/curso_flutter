abstract class Funcionario {
  String? nome;
  DateTime? _nascimento;

  Funcionario(this.nome);

  set nascimento(DateTime? value) {
    if (value != null) {
      _nascimento = DateTime(value.year, value.month, value.day);
    }
  }

  DateTime? get nascimento => _nascimento;

  int get idade {
    if (_nascimento == null) return 0;
    return DateTime.now().difference(_nascimento!).inDays ~/ 365;
  }

  @override
  String toString() => 'Nome = $nome, Nascimento=$nascimento';

  @override
  bool operator ==(Object other) =>
      other is Funcionario && other.nome == nome;

  @override
  int get hashCode => nome.hashCode;

  void trabalhar();
}
