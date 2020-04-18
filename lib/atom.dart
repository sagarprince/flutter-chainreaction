import 'dart:async';
import 'package:flutter/material.dart';
import 'package:chainreaction/electron.dart';

class Atom extends StatelessWidget {
  final Color color;
  final List electrons;
  final bool isExplode;

  const Atom(
      {Key key,
      this.color = Colors.green,
      this.electrons = const [],
      this.isExplode = false})
      : super(key: key);

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        dynamic width = constraints.maxWidth;
        dynamic height = constraints.maxHeight;
        return Container(
          child: Stack(
            children: electrons.map((index) {
              switch (index) {
                case 4:
                  return AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    top: (height / 2) - 16,
                    right: !isExplode ? 12 : -40,
                    child: Electron(color: color),
                  );
                  break;
                case 3:
                  return AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    top: (height / 2) - 16,
                    left: !isExplode ? 12 : -40,
                    child: Electron(color: color),
                  );
                  break;
                case 2:
                  return AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    bottom: !isExplode ? ((height / 2) - 20) : -40,
                    left: (width / 2) - 9,
                    child: Electron(color: color),
                  );
                  break;
                default:
                  return AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    top: !isExplode ? (height / 2) - 9 : -40,
                    left: (width / 2) - 9,
                    child: Electron(color: color),
                  );
              }
            }).toList(),
          ),
        );
      },
    );
  }
}
