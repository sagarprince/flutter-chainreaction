import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:chainreaction/store/chainprovider.dart';
import 'package:chainreaction/home.dart';

void main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChainProvider()),
      ],
      child: MaterialApp(
        title: 'Chain Reaction Game',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Mukta',
          primarySwatch: Colors.red,
        ),
        home: HomePage(title: 'ChainReaction'),
      ),
    );
  }
}
