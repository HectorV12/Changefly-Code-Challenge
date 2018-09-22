import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.scaleDown,
      colorFilter: ColorFilter.mode(
        Colors.white.withOpacity(0.1),
        BlendMode.dstATop,
      ),
      image: AssetImage('assets/changefly_cube.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/changefly_name.png',
          scale: 3.5,
        ),
        centerTitle: true,
        leading: Image.asset('assets/changefly_cube.png'),
        actions: <Widget>[
          Image.asset('assets/changefly_cube.png'),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
      ),
     );
  }
}
