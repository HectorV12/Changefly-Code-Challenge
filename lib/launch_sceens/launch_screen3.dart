import 'dart:async';
import 'package:flutter/material.dart';

class LaunchScreen3 extends StatefulWidget {
  @override
  _LaunchScreen3State createState() => _LaunchScreen3State();
}

class _LaunchScreen3State extends State<LaunchScreen3> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, _navigationPage);
  }

  void _navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LaunchScreen4');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: FadeInImage(
              placeholder: AssetImage('assets/changefly_cube.png'),
              image: AssetImage('assets/changefly_name.png'),
              height: 200.0,
              width: 200.0,
              fadeOutDuration: Duration(milliseconds: 800),
            ),
          )
        ],
      ),
    );
  }
}
