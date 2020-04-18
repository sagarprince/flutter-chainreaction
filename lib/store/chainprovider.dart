import 'package:flutter/foundation.dart';

class ChainProvider with ChangeNotifier {
  List<List<AtomModel>> _matrix = buildMatrix();
  List<List<AtomModel>> get matrix => _matrix;

  List<dynamic> reactions = [];

  void playMove(i, j) {
    int count = _matrix[i][j].electrons.length;
    _matrix[i][j].electrons.add(count + 1);
    _matrix[i][j].player = 'red';
    notifyListeners();
    checkChainReaction();
  }

  void checkChainReaction() {
    int m = 9;
    int n = 6;

    OUTER:
    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        int electronsCount = _matrix[i][j].electrons.length;
        if (electronsCount == 4) {
          Future.microtask(() {
            Future.delayed(new Duration(milliseconds: 500), () {
              print(new DateTime.now().millisecondsSinceEpoch);
              explode(i, j);
              Future.delayed(new Duration(milliseconds: 700), () {
                checkChainReaction();
              });
            });
          });
          break OUTER;
        }
      }
    }
  }

  void explode(i, j) {
    _matrix[i][j].isExplode = true;
    notifyListeners();
    Future.delayed(new Duration(milliseconds: 500), () {
      _matrix[i][j].electrons = [];
      _matrix[i][j].player = '';
      AtomModel topAtom = i > 0 ? _matrix[i - 1][j] : null;
      AtomModel rightAtom = j < 5 ? _matrix[i][j + 1] : null;
      AtomModel bottomAtom = i < 8 ? _matrix[i + 1][j] : null;
      AtomModel leftAtom = j > 0 ? _matrix[i][j - 1] : null;
      if (topAtom != null && topAtom.electrons.length < 4) {
        topAtom.electrons.add(topAtom.electrons.length + 1);
        topAtom.player = 'red';
      }
      if (rightAtom != null && rightAtom.electrons.length < 4) {
        rightAtom.electrons.add(rightAtom.electrons.length + 1);
        rightAtom.player = 'red';
      }
      if (bottomAtom != null && bottomAtom.electrons.length < 4) {
        bottomAtom.electrons.add(bottomAtom.electrons.length + 1);
        bottomAtom.player = 'red';
      }
      if (leftAtom != null && leftAtom.electrons.length < 4) {
        leftAtom.electrons.add(leftAtom.electrons.length + 1);
        leftAtom.player = 'red';
      }
      _matrix[i][j].isExplode = false;
      notifyListeners();
    });
  }
}

List<List<AtomModel>> buildMatrix() {
  int m = 9; // rows
  int n = 6; // cols
  int index = 0;
  return new List.generate(m, (_) {
    return new List.generate(n, (_) {
      index = index + 1;
      var model = new AtomModel(index: index, electrons: [], player: '');
      return model;
    });
  });
}

class AtomModel {
  int index;
  List electrons;
  String player;
  bool isExplode;

  AtomModel(
      {this.index, this.electrons, this.player = '', this.isExplode = false});

  @override
  String toString() => 'AtomModel{'
      'index: $index, '
      'electrons: $electrons, '
      'player: $player, '
      'isExplode: $isExplode'
      '}';
}
