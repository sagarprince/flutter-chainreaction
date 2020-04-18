import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chainreaction/store/chainprovider.dart';
import 'package:chainreaction/atom.dart';
import 'package:chainreaction/flare_atom.dart';

class Cell extends StatelessWidget {
  final AtomModel atomModel;
  final int i;
  final int j;
  Cell({Key key, this.atomModel, this.i, this.j}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(i);
    print(j);
    print('============');
    return RaisedButton(
      padding: const EdgeInsets.all(0.0),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Atom(
          color: atomModel.player == 'red' ? Colors.red : Colors.blue,
          electrons: atomModel.electrons,
          isExplode: atomModel.isExplode),
      color: Colors.white30,
      disabledColor: Colors.transparent,
      onPressed: atomModel.electrons.length != 4
          ? () {
              Provider.of<ChainProvider>(context, listen: false).playMove(i, j);
            }
          : null,
    );
  }
}
