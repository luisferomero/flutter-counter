import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 30);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Taps Counter"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Taps:", style: _textStyle),
              Text("$_count", style: _textStyle)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            setState(() => _count = 0);
          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            setState(() => _count--);
          },
        ),
        SizedBox(
          width: 20.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() => _count++);
          },
        )
      ],
    );
  }
}
