import 'package:changefly_code_challenge/homescreen.dart';
import 'package:changefly_code_challenge/launch_sceens/launch_screen1.dart';
import 'package:changefly_code_challenge/launch_sceens/launch_screen2.dart';
import 'package:changefly_code_challenge/launch_sceens/launch_screen3.dart';
import 'package:changefly_code_challenge/launch_sceens/launch_screen4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  //debugPaintSizeEnabled = true;
  runApp(ChangeflyApp());
}

class ChangeflyApp extends StatefulWidget {
  @override
  _ChangeflyAppState createState() => _ChangeflyAppState();
}

class _ChangeflyAppState extends State<ChangeflyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //For Decoration Purposes
      title: 'Changefly',
      color: Colors.grey.shade700,
      theme: ThemeData(
        backgroundColor: Colors.white,
        //primaryColor: Colors.cyan.shade400,
        primaryColor: Colors.white
      ),
      routes: {
        '/': (BuildContext context) => LaunchScreen1(),
        '/LaunchScreen2': (BuildContext context) => LaunchScreen2(),
        '/LaunchScreen3': (BuildContext context) => LaunchScreen3(),
        '/LaunchScreen4': (BuildContext context) => LaunchScreen4(),
        '/HomeScreen': (BuildContext context) => HomeScreen(),
      },
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        );
      },
    );
  }
}
