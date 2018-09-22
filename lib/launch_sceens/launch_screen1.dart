import 'dart:async';
import 'package:flutter/material.dart';

class LaunchScreen1 extends StatefulWidget {
  @override
  _LaunchScreen1State createState() => _LaunchScreen1State();
}

class _LaunchScreen1State extends State<LaunchScreen1> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, _navigationPage);
  }

  void _navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LaunchScreen2');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/changefly_cube.png',
              scale: 4.0,
            ),
            Image.asset(
              'assets/changefly_name.png',
              scale: 2.5,
            ),
          ],
        ),
      ),
    );
  }
}
