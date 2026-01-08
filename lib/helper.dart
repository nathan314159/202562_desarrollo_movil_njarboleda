

class Validators {

  static bool cedulaEcuatoriana(String cedula) {
    if (cedula.length != 10) return false;

    final provincia = int.parse(cedula.substring(0, 2));
    if (provincia < 1 || provincia > 24) return false;

    final tercerDigito = int.parse(cedula[2]);
    if (tercerDigito > 5) return false;

    int suma = 0;
    for (int i = 0; i < 9; i++) {
      int digito = int.parse(cedula[i]);
      if (i % 2 == 0) {
        digito *= 2;
        if (digito > 9) digito -= 9;
      }
      suma += digito;
    }

    int digitoVerificador = 10 - (suma % 10);
    if (digitoVerificador == 10) digitoVerificador = 0;

    return digitoVerificador == int.parse(cedula[9]);
  }


  static bool email(String email) {
    final regex = RegExp(
      r"^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9])*@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$"
    );
    return regex.hasMatch(email);
  }


  static bool password(String password) {
    if (password.contains(' ')) return false;

    final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
    if (!hasUppercase) return false;

    final hasNumber = RegExp(r'\d').hasMatch(password);
    if (!hasNumber) return false;

    final hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
    if (!hasSpecialChar) return false;

    if (!password.toLowerCase().contains('pucetec')) return false;

    return true; 
  }
}
