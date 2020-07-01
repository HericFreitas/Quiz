import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../shared/validators.dart';
import 'controller/loginController.dart';
import 'login_screen.dart';
import 'widgets/custom_button.dart';
import 'widgets/input_email.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {

  final _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  LoginController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller ??= Provider.of<LoginController>(context);
  }

  void createAccount(){
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      _controller.signUpWithCredentials(onSuccess: onSuccess, onError: onError);
    }
  }

  onSuccess(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Conta Criada'),
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

  onError(error){
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
                    'Criar Conta',
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
                      label: 'Nome',
                      onSaved: _controller.setName,
                      validator: Validator.isValidateName,
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
                      label: 'Password',
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
                      label: 'Criar Conta',
                      busy: _controller.busy,
                      onTap: createAccount,
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
