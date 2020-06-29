import 'package:flutter/material.dart';

class CustomInputEmail extends StatelessWidget {

  final String label;
  final bool busy;
  final TextInputType textInputType;
  final Function(String) onSaved;
  final Function(String) validator;
  final TextEditingController controller;

  const CustomInputEmail({
    Key key,
    this.label,
    this.onSaved,
    this.busy = false,
    this.textInputType = TextInputType.text,
    this.validator,
    this.controller,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextFormField(
        controller: controller,
        onSaved: onSaved,
        validator: validator,
        enabled: !busy,
        keyboardType: textInputType,
        decoration: InputDecoration(
          fillColor: Colors.black38,
          labelText: label,

          filled: true,
        ),
      ),
    );
  }
}
