import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: RaisedButton(
        color: Color.fromARGB(255, 0, 0, 65),
        onPressed: (){},
        child: Text('Entrar', style: TextStyle(color: Color.fromARGB(255, 255, 219, 88), fontSize: 20),),
      ),
    );
  }
}
