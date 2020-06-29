import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: RaisedButton(
        onPressed: (){},
        child: Text('Entrar'),
      ),
    );
  }
}
