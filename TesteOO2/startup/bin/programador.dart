import 'funcionario_assalariado.dart';

class Programador extends FuncionarioAssalariado {
  List<String>? linguagens;

  Programador(String? nome, [this.linguagens]) : super(nome, 1000.0);

  StringBuffer get listaLinguagens {
    final lista = StringBuffer();
    lista.writeAll(linguagens ?? <String>[]);
    return lista;
  }

  @override
  String toString() => '${super.toString()}, Linguagens = $listaLinguagens';

  @override
  void trabalhar() {
    print('Programando...');
  }

  @override
  void receber() {
    print('Programador recebendo $salario');
  }
}
