import 'package:flutter/material.dart';

import 'model/user.dart';
import 'widgets/custom_button.dart';
import 'widgets/input_email.dart';

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    UserModel user = UserModel();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 65),
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
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
                CustomInputEmail(
                  busy: false,
                  label: 'E-mail',
                  onSaved: (email) => user.email = email,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInputEmail(
                  busy: false,
                  label: 'Senha',
                  onSaved: (pass) => user.password = pass,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(),
                Divider(),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Text(
                            'Criar Conta',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
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
