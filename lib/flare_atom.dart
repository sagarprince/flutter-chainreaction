import 'package:flutter/material.dart';
import 'package:chainreaction/electron.dart';
import 'package:flare_flutter/flare_actor.dart';
import "package:flare_flutter/flare_cache_builder.dart";

class FlareAtom extends StatelessWidget {
  final Color color;
  final List electrons;
  final bool isExplode;

  const FlareAtom(
      {Key key,
      this.color = Colors.green,
      this.electrons = const [],
      this.isExplode = false})
      : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black54),
      padding: EdgeInsets.all(10.0),
      child: FlareCacheBuilder(
        ["assets/flares/ChainReaction_3.flr"],
        builder: (_, __) {
          return new FlareActor(
            "assets/flares/ChainReaction_3.flr",
            fit: BoxFit.fitWidth,
          );
        },
      ),
    );
  }
}
