//import 'package:flutter/foundation.dart';
//
//class ChainProvider with ChangeNotifier {
//  int _count = 0;
//  int get count => _count;
//  List<List<AtomModel>> _matrix = buildMatrix();
//  List<List<AtomModel>> get matrix => _matrix;
//
//  void increment() {
//    _count++;
//    notifyListeners();
//  }
//
//  void playMove(i, j) {
//    int length = _matrix[i][j].electrons.length;
//    _matrix[i][j].electrons.add(length + 1);
//    _matrix[i][j].player = 'red';
//    notifyListeners();
//  }
//
//  void explode(i, j) {
//    _matrix[i][j].electrons = [];
//    _matrix[i][j].player = '';
//    AtomModel topAtom = _matrix[i + 1][j];
//    AtomModel rightAtom = _matrix[i][j + 1];
//    AtomModel bottomAtom = _matrix[i - 1][j];
//    AtomModel leftAtom = _matrix[i][j - 1];
//    if (topAtom.electrons.length < 4) {
//      topAtom.electrons.add(topAtom.electrons.length + 1);
//      topAtom.player = 'red';
//    }
//    if (rightAtom.electrons.length < 4) {
//      rightAtom.electrons.add(rightAtom.electrons.length + 1);
//      rightAtom.player = 'red';
//    }
//    if (bottomAtom.electrons.length < 4) {
//      bottomAtom.electrons.add(bottomAtom.electrons.length + 1);
//      bottomAtom.player = 'red';
//    }
//    if (leftAtom.electrons.length < 4) {
//      leftAtom.electrons.add(leftAtom.electrons.length + 1);
//      leftAtom.player = 'red';
//    }
//    notifyListeners();
//  }
//}
//
//List<List<AtomModel>> buildMatrix() {
//  int m = 9; // rows
//  int n = 6; // cols
//  int index = 0;
//  return new List.generate(m, (_) {
//    return new List.generate(n, (_) {
//      index = index + 1;
//      var model = new AtomModel(index: index, electrons: [], player: '');
//      return model;
//    });
//  });
//}
//
//class AtomModel {
//  int index;
//  List electrons;
//  String player;
//
//  AtomModel({this.index, this.electrons, this.player = ''});
//
//  @override
//  String toString() => 'AtomModel{'
//      'index: $index, '
//      'electrons: $electrons, '
//      'player: $player'
//      '}';
//}
