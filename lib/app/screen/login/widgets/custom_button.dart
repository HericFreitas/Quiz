import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool busy;
  final Function onTap;
  final String label;

  CustomButton({this.onTap, this.busy, this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 65),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            busy
                ? Container(height: 21, width: 21,child: CircularProgressIndicator(),)
                : Text(label,
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
