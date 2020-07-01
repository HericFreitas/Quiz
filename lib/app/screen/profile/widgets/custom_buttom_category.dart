import 'package:flutter/material.dart';

class CustomButtonCategory extends StatelessWidget {
  final Function onTap;
  final String label;

  CustomButtonCategory({this.onTap, this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 50 ,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(label,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 219, 88),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ))
          ],
        ),
      ),
    );
  }
}
