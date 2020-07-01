import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:quiz/app/screen/profile/widgets/ProfileHeader.dart';
import 'package:quiz/app/screen/profile/widgets/custom_buttom_category.dart';

import 'controller/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  ProfileController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller ??= Provider.of<ProfileController>(context);
    _controller.getCurrentUser();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 65),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black45,
                  height: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 55),
                      Text(_controller.user.name,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )),
                      Text('Pontos: ${_controller.user.points}',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ))
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Categorias",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(height: 50,),
            CustomButtonCategory(
              label: 'PORTUGUÊS',
            ),
            SizedBox(height: 5,),
            CustomButtonCategory(
              label: 'PORTUGUÊS',
            ),
            SizedBox(height: 5,),
            CustomButtonCategory(
              label: 'PORTUGUÊS',
            ),
            SizedBox(height: 5,),
            CustomButtonCategory(
              label: 'PORTUGUÊS',
            ),
            SizedBox(height: 5,),
            CustomButtonCategory(
              label: 'PORTUGUÊS',
            )
          ],
        ),
      ),
    );
  }
}
