import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String points;

  const ProfileHeader({Key key, this.name, this.points}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: Colors.black45,
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          Text(name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              )),
          Text(points,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
