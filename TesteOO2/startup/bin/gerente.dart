import 'bonificavel.dart';
import 'funcionario_assalariado.dart';

class Gerente extends FuncionarioAssalariado with Bonificavel {
  Gerente(String? nome, double salario, double bonus)
      : super(nome, salario) {
    this.bonus = bonus;
  }

  @override
  void trabalhar() {
    print('Gerenciando...');
  }

  @override
  void receber() {
    print('Gerente recebendo $remuneracaoTotal');
  }
}
