import 'dart:async';
import 'package:flutter/material.dart';

class LaunchScreen2 extends StatefulWidget {
  @override
  _LaunchScreen2State createState() => _LaunchScreen2State();
}

class _LaunchScreen2State extends State<LaunchScreen2> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var _duration = new Duration(milliseconds: 1800);
    return new Timer(_duration, _navigationPage);
  }

  void _navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LaunchScreen3');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/changefly.gif',),
            Padding(padding: EdgeInsets.all(25.0))
          ],
        ),
      ),
    );
  }
}
