//import 'dart:async';
//import 'package:flutter/material.dart';
//import 'package:chainreaction/electron.dart';
//
//class Atom extends StatefulWidget {
//  final Color color;
//  final List electrons;
//  final Function onExploded;
//
//  const Atom(
//      {Key key,
//      this.color = Colors.green,
//      this.electrons = const [],
//      this.onExploded})
//      : super(key: key);
//
//  _AtomState createState() => _AtomState();
//}
//
//class _AtomState extends State<Atom> {
//  bool isExplode = false;
//
//  @override
//  didUpdateWidget(Atom oldWidget) {
//    super.didUpdateWidget(oldWidget);
//    if (widget.electrons.length == 4) {
//      Future.delayed(new Duration(milliseconds: 1200), () {
//        setState(() {
//          isExplode = true;
//        });
//        Future.microtask(() {
//          if (widget.onExploded != null) {
//            Future.delayed(new Duration(milliseconds: 1200), () {
//              setState(() {
//                isExplode = false;
//              });
//              widget.onExploded();
//            });
//          }
//        });
//      });
//    }
//  }
//
//  Widget build(BuildContext context) {
//    return LayoutBuilder(
//      builder: (_, BoxConstraints constraints) {
//        dynamic width = constraints.maxWidth;
//        dynamic height = constraints.maxHeight;
//        return Container(
//          child: Stack(
//            children: widget.electrons.map((index) {
//              switch (index) {
//                case 4:
//                  return AnimatedPositioned(
//                    duration: Duration(milliseconds: 800),
//                    top: (height / 2) - 16,
//                    right: !isExplode ? 12 : -40,
//                    child: Electron(color: widget.color),
//                  );
//                  break;
//                case 3:
//                  return AnimatedPositioned(
//                    duration: Duration(milliseconds: 800),
//                    top: (height / 2) - 16,
//                    left: !isExplode ? 12 : -40,
//                    child: Electron(color: widget.color),
//                  );
//                  break;
//                case 2:
//                  return AnimatedPositioned(
//                    duration: Duration(milliseconds: 800),
//                    bottom: !isExplode ? ((height / 2) - 20) : -40,
//                    left: (width / 2) - 9,
//                    child: Electron(color: widget.color),
//                  );
//                  break;
//                default:
//                  return AnimatedPositioned(
//                    duration: Duration(milliseconds: 800),
//                    top: !isExplode ? (height / 2) - 9 : -40,
//                    left: (width / 2) - 9,
//                    child: Electron(color: widget.color),
//                  );
//              }
//            }).toList(),
//          ),
//        );
//      },
//    );
//  }
//}
