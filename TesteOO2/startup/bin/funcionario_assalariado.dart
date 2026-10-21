import 'assalariado.dart';
import 'funcionario.dart';

abstract class FuncionarioAssalariado extends Funcionario
    implements Assalariado {
  FuncionarioAssalariado(super.nome, this.salario);

  @override
  double salario;

  @override
  void receber(); //Deixando o método abstrato para que as classes 
  //filhas implementem de acordo com a necessidade
}
