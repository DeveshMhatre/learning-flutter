import 'package:flutter/material.dart';

import 'ui/Counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Staat', primaryColor: Colors.red[300]),
        home: Scaffold(
            backgroundColor: Colors.blueGrey[300],
            appBar: AppBar(
                title: Center(
                    child: Text(
              'Movie Library',
              style: TextStyle(color: Colors.black54),
            ))),
            body:
                Container(margin: const EdgeInsets.all(20), child: Counter())));
  }
}
