import 'funcionario_assalariado.dart';
import 'gerente.dart';
import 'programador.dart';
import 'startup.dart';

void main() {
  final startup = Startup(<FuncionarioAssalariado>[
    Programador('Maria', ['Lua']),
    Programador('Pedro', ['Dart']),
    Programador('Luiz', ['Java', 'Node', 'Python']),
    Programador('Paulo'),
    Gerente('Ana', 5000.0, 1000.0),
  ]);

  startup.executarAtividades();
  startup.pagarFuncionarios();
}
