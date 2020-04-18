//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'package:chainreaction/store/chainprovider.dart';
//import 'package:chainreaction/cell.dart';
//
//class HomePage extends StatefulWidget {
//  final String title;
//
//  HomePage({Key key, this.title}) : super(key: key);
//
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  int cols = 6;
//  int rows = 9;
//
//  AppBar _appBar() {
//    return AppBar(
//      title: Text(widget.title),
//    );
//  }
//
//  Widget buildGrid(ChainProvider chainProvider, double width, double height,
//      dynamic removeHeight) {
//    List<Widget> listRows = [];
//    for (int i = 0; i < chainProvider.matrix.length; i++) {
//      List<Widget> listCols = [];
//      for (int j = 0; j < chainProvider.matrix[i].length; j++) {
//        listCols.add(Container(
//          width: (width / cols),
//          height: (height - removeHeight) / rows,
//          decoration: BoxDecoration(
//              border: Border(
//                  top: BorderSide(color: Colors.black12, width: 1.0),
//                  left: BorderSide(color: Colors.black12, width: 1.0))),
//          child: Cell(
//            atomModel: chainProvider.matrix[i][j],
//            i: i,
//            j: j,
//          ),
//        ));
//      }
//      listRows.add(Row(
//        children: listCols,
//      ));
//    }
//    return new Column(children: listRows);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    AppBar appBar = _appBar();
//    var mediaQuery = MediaQuery.of(context);
//
//    final double width = mediaQuery.size.width;
//    final double height = mediaQuery.size.height;
//    dynamic removeHeight = mediaQuery.padding.top + appBar.preferredSize.height;
//
//    print('build 1');
//
//    return Scaffold(
//        appBar: appBar,
//        body: SafeArea(
//          top: false,
//          bottom: false,
//          child: Column(
//            children: <Widget>[
//              Flexible(
//                child: Consumer<ChainProvider>(
//                  builder: (_, chainProvider, __) {
//                    return buildGrid(
//                        chainProvider, width, height, removeHeight);
//                  },
//                ),
//              )
//            ],
//          ),
//        ));
//  }
//}
