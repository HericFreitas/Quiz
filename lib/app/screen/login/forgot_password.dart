import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../shared/validators.dart';
import 'controller/loginController.dart';
import 'login_screen.dart';
import 'widgets/custom_button.dart';
import 'widgets/input_email.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = new GlobalKey<FormState>();

  LoginController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller ??= Provider.of<LoginController>(context);
  }

  void recuperar() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      _controller.sendPasswordResetEmail(
          onError: onError, onSuccess: onSuccess);
    }
  }

  onError(error) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Erro ao Entrar'),
            content: Text(error),
            actions: <Widget>[
              FlatButton(
                child: new Text("Fechar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  onSuccess() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Enviado com sucesso'),
            content: Text('Enviado para o e-mail: ${_controller.userEmail}'),
            actions: <Widget>[
              FlatButton(
                child: new Text("Fechar"),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 65),
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shrinkWrap: true,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Esqueceu a senha',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Observer(
                  builder: (_) {
                    return CustomInputEmail(
                      busy: _controller.busy,
                      label: 'E-mail',
                      onSaved: _controller.setEmail,
                      validator: Validator.isValidEmail,
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Observer(
                  builder: (_) {
                    return CustomButton(
                      label: 'Recuperar a senha',
                      busy: _controller.busy,
                      onTap: recuperar,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
