//Será usado como interface para as classes que representam os tipos de assalariados
abstract class Assalariado {
  Assalariado(this.salario);

  double salario;

  void receber();
}
