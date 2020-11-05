import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final myController1 = TextEditingController();
    final myController2 = TextEditingController();
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTextField(myController1),
          _buildTextField(myController2),
        ],
      ),
    );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ExampleCalculator'),
        ),
        body:
        textSection,
      ),
    );
  }

  _buildTextField(TextEditingController myController1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 120,
            margin: EdgeInsets.all(8),
            child: TextField(
              controller: myController1,
            )),
      ],
    );
  }
}
