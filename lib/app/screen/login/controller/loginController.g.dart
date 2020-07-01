// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$busyAtom = Atom(name: '_LoginControllerBase.busy');

  @override
  bool get busy {
    _$busyAtom.reportRead();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.reportWrite(value, super.busy, () {
      super.busy = value;
    });
  }

  final _$userNameAtom = Atom(name: '_LoginControllerBase.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$userEmailAtom = Atom(name: '_LoginControllerBase.userEmail');

  @override
  String get userEmail {
    _$userEmailAtom.reportRead();
    return super.userEmail;
  }

  @override
  set userEmail(String value) {
    _$userEmailAtom.reportWrite(value, super.userEmail, () {
      super.userEmail = value;
    });
  }

  final _$userPasswordAtom = Atom(name: '_LoginControllerBase.userPassword');

  @override
  String get userPassword {
    _$userPasswordAtom.reportRead();
    return super.userPassword;
  }

  @override
  set userPassword(String value) {
    _$userPasswordAtom.reportWrite(value, super.userPassword, () {
      super.userPassword = value;
    });
  }

  final _$userCpfAtom = Atom(name: '_LoginControllerBase.userCpf');

  @override
  String get userCpf {
    _$userCpfAtom.reportRead();
    return super.userCpf;
  }

  @override
  set userCpf(String value) {
    _$userCpfAtom.reportWrite(value, super.userCpf, () {
      super.userCpf = value;
    });
  }

  final _$userDateAtom = Atom(name: '_LoginControllerBase.userDate');

  @override
  String get userDate {
    _$userDateAtom.reportRead();
    return super.userDate;
  }

  @override
  set userDate(String value) {
    _$userDateAtom.reportWrite(value, super.userDate, () {
      super.userDate = value;
    });
  }

  final _$userCnpjAtom = Atom(name: '_LoginControllerBase.userCnpj');

  @override
  String get userCnpj {
    _$userCnpjAtom.reportRead();
    return super.userCnpj;
  }

  @override
  set userCnpj(String value) {
    _$userCnpjAtom.reportWrite(value, super.userCnpj, () {
      super.userCnpj = value;
    });
  }

  final _$userTelefoneAtom = Atom(name: '_LoginControllerBase.userTelefone');

  @override
  String get userTelefone {
    _$userTelefoneAtom.reportRead();
    return super.userTelefone;
  }

  @override
  set userTelefone(String value) {
    _$userTelefoneAtom.reportWrite(value, super.userTelefone, () {
      super.userTelefone = value;
    });
  }

  final _$signInWithCredentialsAsyncAction =
      AsyncAction('_LoginControllerBase.signInWithCredentials');

  @override
  Future<dynamic> signInWithCredentials(
      {Function onSuccess, dynamic Function(String) onError}) {
    return _$signInWithCredentialsAsyncAction.run(() =>
        super.signInWithCredentials(onSuccess: onSuccess, onError: onError));
  }

  final _$signUpWithCredentialsAsyncAction =
      AsyncAction('_LoginControllerBase.signUpWithCredentials');

  @override
  Future<dynamic> signUpWithCredentials(
      {Function onSuccess, dynamic Function(String) onError}) {
    return _$signUpWithCredentialsAsyncAction.run(() =>
        super.signUpWithCredentials(onSuccess: onSuccess, onError: onError));
  }

  final _$sendPasswordResetEmailAsyncAction =
      AsyncAction('_LoginControllerBase.sendPasswordResetEmail');

  @override
  Future<dynamic> sendPasswordResetEmail(
      {Function onSuccess, dynamic Function(String) onError}) {
    return _$sendPasswordResetEmailAsyncAction.run(() =>
        super.sendPasswordResetEmail(onSuccess: onSuccess, onError: onError));
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void setBusy(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setBusy');
    try {
      return super.setBusy(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCpf(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setDate');
    try {
      return super.setDate(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTelefone(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setTelefone');
    try {
      return super.setTelefone(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCnpj(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setCnpj');
    try {
      return super.setCnpj(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
busy: ${busy},
userName: ${userName},
userEmail: ${userEmail},
userPassword: ${userPassword},
userCpf: ${userCpf},
userDate: ${userDate},
userCnpj: ${userCnpj},
userTelefone: ${userTelefone}
    ''';
  }
}
