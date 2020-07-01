import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/app/screen/login/login_screen.dart';

import 'app/screen/login/controller/loginController.dart';
import 'app/screen/login/controller/loginController.dart';
import 'app/screen/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginController>.value(value: LoginController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
