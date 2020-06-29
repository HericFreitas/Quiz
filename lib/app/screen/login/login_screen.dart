import 'package:flutter/material.dart';

import 'widgets/custom_button.dart';
import 'widgets/input_email.dart';

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
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
                  child: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 10,),
                CustomInputEmail(
                  busy: false,
                  label: 'E-mail',
                ),
                SizedBox(height: 10,),
                CustomInputEmail(
                  busy: false,
                  label: 'Senha',
                ),
                SizedBox(height: 10,),
                CustomButton(),
                Divider(),
                Align(

                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: (){},
                          child: Text('Criar Conta', style: TextStyle(fontSize: 10),),
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: (){},
                          child: Text('Esqueci minha senha', style: TextStyle(fontSize: 10),),
                        ),
                      ],
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
