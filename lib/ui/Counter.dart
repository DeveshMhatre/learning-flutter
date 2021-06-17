import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // State variable and methods
  int count = 0;

  void incCount() {
    setState(() {
      count += 1;
    });
  }

  void decCount() {
    setState(() {
      count -= 1;
    });
  }

  // Styles
  final TextStyle textStyle = TextStyle(
    fontSize: 26,
  );

  final ButtonStyle btnStyle =
      ElevatedButton.styleFrom(primary: Colors.red[300]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text(
            'Counter',
            style: textStyle,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                onPressed: decCount,
                child: Text('-'),
                style: btnStyle,
              ),
              Text(
                '$count',
                style: textStyle,
              ),
              ElevatedButton(
                onPressed: incCount,
                child: Text('+'),
                style: btnStyle,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
