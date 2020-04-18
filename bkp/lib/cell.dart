//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'package:chainreaction/store/chainprovider.dart';
//
//import 'package:chainreaction/atom.dart';
//
//class Cell extends StatefulWidget {
//  final AtomModel atomModel;
//  final int i;
//  final int j;
//  Cell({Key key, this.atomModel, this.i, this.j}) : super(key: key);
//
//  @override
//  _CellState createState() => _CellState();
//}
//
//class _CellState extends State<Cell> {
////  List electrons = [];
//
//  @override
//  Widget build(BuildContext context) {
//    return RaisedButton(
//      padding: const EdgeInsets.all(0.0),
//      elevation: 0.0,
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.zero,
//      ),
//      child: Atom(
//          color: widget.atomModel.player == 'red' ? Colors.red : Colors.blue,
//          electrons: widget.atomModel.electrons,
//          onExploded: () {
//            Provider.of<ChainProvider>(context, listen: false)
//                .explode(widget.i, widget.j);
//          }),
//      color: Colors.white30,
//      disabledColor: Colors.transparent,
//      onPressed: widget.atomModel.electrons.length != 4
//          ? () {
//        Provider.of<ChainProvider>(context, listen: false)
//            .playMove(widget.i, widget.j);
//      }
//          : null,
//    );
//  }
//}
//
