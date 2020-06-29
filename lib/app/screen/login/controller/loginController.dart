import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:quiz/app/screen/login/repository/login_repository.dart';

part 'loginController.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  AccountRepository _repository;

  _LoginControllerBase(){
    _repository = new AccountRepository();
  }

  @observable
  bool busy = false;

  @observable
  String userName = "";

  @observable
  String userEmail = '';

  @observable
  String userPassword = '';

  @action
  void setBusy(bool value) => busy = value;

  @action
  void setEmail(String value) => userEmail = value.trim();

  @action
  void setPassword(String value) => userPassword = value.trim();

  @action
  void setName(String value) => userName = value.trim();

  @action
  Future signInWithCredentials(
      {Function onSuccess, Function(String) onError}) async {
    setBusy(true);
    _repository
        .signInWithCredentials(email: userEmail, password: userPassword)
        .then((value) => onSuccess())
        .catchError(onError)
        .whenComplete(() => setBusy(false));
  }

  @action
  Future signUpWithCredentials(
      {Function onSuccess, Function(String) onError}) async {
    setBusy(true);
    _repository
        .createUserWithEmailAndPassword(
        email: userEmail, password: userPassword, name: userName)
        .then((value) => onSuccess())
        .catchError(onError)
        .whenComplete(() => setBusy(false));
  }

  @action
  Future sendPasswordResetEmail(
      {Function onSuccess, Function(String) onError}) async {
    setBusy(true);
    _repository
        .sendPasswordResetEmail(email: userEmail)
        .then((value) => onSuccess())
        .catchError(onError)
        .whenComplete(() => setBusy(false));
  }
}