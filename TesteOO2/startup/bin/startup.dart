import 'funcionario_assalariado.dart';

class Startup {
  List<FuncionarioAssalariado> funcionarios;

  Startup(this.funcionarios);

  void executarAtividades() {
    funcionarios.forEach((funcionario) => funcionario.trabalhar());
  }

  void pagarFuncionarios() {
    funcionarios.forEach((funcionario) => funcionario.receber());
  }
}
