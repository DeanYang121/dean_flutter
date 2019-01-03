import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 100.0
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class AspectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0 / 2.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0),
                ])),
            child: Icon(Icons.brightness_2, color: Colors.white, size: 32),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 10.0,
          top: 200.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 20.0,
          top: 150.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 15.0,
          top: 225.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 90.0,
          top: 127.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 78.0,
          top: 34.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 66.0,
          top: 66.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
