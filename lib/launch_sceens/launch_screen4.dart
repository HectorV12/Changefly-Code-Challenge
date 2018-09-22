import 'dart:async';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class LaunchScreen4 extends StatefulWidget {
  @override
  _LaunchScreen4State createState() => _LaunchScreen4State();
}

class _LaunchScreen4State extends State<LaunchScreen4>
    with TickerProviderStateMixin {
  Animation<double> cubeTopAnimation;
  AnimationController cubeTopController;
  Animation<double> cubeRightAnimation;
  AnimationController cubeRightController;
  Animation<double> cubeLeftAnimation;
  AnimationController cubeLeftController;

  @override
  void initState() {
    super.initState();
    startTime();

    cubeTopController = AnimationController(
      duration: Duration(
        milliseconds: 1500,
      ),
      vsync: this,
    );

    cubeTopAnimation = Tween(
      begin: -400.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: cubeTopController,
      curve: Curves.bounceInOut,
    ));

    cubeRightController = AnimationController(
      duration: Duration(
        milliseconds: 1500,
      ),
      vsync: this,
    );

    cubeRightAnimation = Tween(
      begin: -400.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: cubeRightController,
      curve: Curves.bounceInOut,
    ));

    cubeLeftController = AnimationController(
      duration: Duration(
        milliseconds: 1500,
      ),
      vsync: this,
    );

    cubeLeftAnimation = Tween(
      begin: -400.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: cubeLeftController,
      curve: Curves.bounceInOut,
    ));

    cubeTopController.forward();
    cubeRightController.forward();
    cubeLeftController.forward();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, _navigationPage);
  }

  void _navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  Widget buildCubeTopAnimation() {
    return AnimatedBuilder(
      animation: cubeTopAnimation,
      builder: (context, child) {
        return Positioned(
          child: child,
          top: cubeTopAnimation.value,
          right: 0.0,
          left: 0.0,
        );
      },
      child: Image.asset('assets/changefly_cube_top.png'),
    );
  }

  Widget buildCubeRightAnimation() {
    return AnimatedBuilder(
      animation: cubeRightAnimation,
      builder: (context, child) {
        return Positioned(
          child: child,
          top: 0.0,
          right: cubeRightAnimation.value,
          left: 0.0,
        );
      },
      child: Image.asset('assets/changefly_cube_right.png'),
    );
  }

  Widget buildCubeLeftAnimation() {
    return AnimatedBuilder(
      animation: cubeLeftAnimation,
      builder: (context, child) {
        return Positioned(
          child: child,
          top: 0.0,
          right: 0.0,
          left: cubeLeftAnimation.value,
        );
      },
      child: Image.asset('assets/changefly_cube_left.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                buildCubeTopAnimation(),
                buildCubeRightAnimation(),
                buildCubeLeftAnimation(),
                Container(
                  width: 200.0,
                  height: 220.0,
                ),
              ],
            ),
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage('assets/changefly_name1.png'),
              height: 250.0,
              width: 250.0,
              fadeOutDuration: Duration(milliseconds: 1300),
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }
}
