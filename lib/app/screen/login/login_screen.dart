import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:quiz/app/screen/login/create_user.dart';
import 'package:quiz/app/screen/login/forgot_password.dart';

import '../../../shared/validators.dart';
import '../../../shared/validators.dart';
import 'controller/loginController.dart';
import 'widgets/custom_button.dart';
import 'widgets/input_email.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  LoginController _controller;

  signInWithEmailAndPassword() {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      _controller.signInWithCredentials(onSuccess: onSuccess, onError: onError);
    }
  }

  onError(error) {
    showDialog(context: context,
      builder: (BuildContext context){
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
      }
    );
  }

  onSuccess() {
//    Navigator.pushReplacement(
//      context,
//      MaterialPageRoute(builder: (context) => HomePage()),
//    );
  print("success");
  }

  void forgotPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
  }

  void createAccount(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateScreen()));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller ??= Provider.of<LoginController>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Observer(
                  builder: (_){
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
                  builder: (_){
                    return CustomInputEmail(
                      busy: _controller.busy,
                      label: 'Senha',
                      onSaved: _controller.setPassword,
                      validator: Validator.isValidatePassword,
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Observer(
                  builder: (_){
                    return CustomButton(
                      label: 'Login',
                      busy: _controller.busy,
                      onTap: signInWithEmailAndPassword,
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(color: Colors.grey[700],),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: createAccount,
                          child: Text(
                            'Criar Conta',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: forgotPassword,
                          child: Text(
                            'Esqueci minha senha',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}