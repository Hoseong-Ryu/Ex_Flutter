import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {//눌릴때
            Navigator.push(//두 번째 route로 전환하기
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),//"MaterialPageRoute"새로운 route로 이동 시 애니메이션을 사용하기 좋음
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);//첫번째 route로 되돌아가기
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}