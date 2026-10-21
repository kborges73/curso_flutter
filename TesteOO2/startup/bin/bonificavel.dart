import 'assalariado.dart';

mixin Bonificavel on Assalariado {
  double bonus = 0.0;

  double get remuneracaoTotal => salario + bonus;
}
