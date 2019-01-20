import 'package:flutter/material.dart';
import 'drawer_nav.dart';

class LoginScreen extends StatefulWidget {

  @override
  State createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.black,
      drawer: DrawerNav(),
      body: new Container()
    );
  }
}