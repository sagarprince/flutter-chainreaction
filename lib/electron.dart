import 'package:flutter/material.dart';

class Electron extends StatelessWidget {
  final Color color;
  const Electron({Key key, this.color = Colors.green}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment.topLeft,
              radius: 1.0,
              focalRadius: 1.0,
              colors: [color.withOpacity(0.5), color]),
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          boxShadow: [
            new BoxShadow(
              color: Colors.black54,
              blurRadius: 1,
            )
          ]),
    );
  }
}
