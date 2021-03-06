class Validator {
  static String isNotEmptyText(String value) {
    if (value.isEmpty) return 'Por favor, o campo não pode estar vázio.';

    return null;
  }

  static String isValidEmail(String value) {
    Pattern pattern = r'^[_a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Email inválido.';
    else
      return null;
  }

  static String isValidatePassword(String value) {
    Pattern pattern = r'^.{6,}$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'A senha deve ter pelo menos 6 caracteres.';
    else
      return null;
  }

  static String isValidateName(String value) {
    if (value.isEmpty) return 'Por favor, insira um nome.';

    return null;
  }

  static String isValidateNumber(String value) {
    Pattern pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Por favor, insira um número válido.';
    else
      return null;
  }
}