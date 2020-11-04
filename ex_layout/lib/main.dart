// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //region 타이틀 섹션
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), //엣지 전구간에 패딩
      child: Row(
        //row 위젯
        children: [
          //row 위젯에 들어가는 위젯 요소
          Expanded(
            //빈공간 채우기
            /*1*/
            child: Column(
              //세로 위젯
              crossAxisAlignment: CrossAxisAlignment.start, // 세로축을 기준으로 왼쪽으로 정렬
              children: [
                //Column 위젯에 들어가는 요소
                /*2*/
                Container(
                  //마진, 패딩 등등 속성을 가지는 일반적인 페인팅과 사이징, 포지셔닝을 조합하기에 편리한 위젯
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );
    //endregion
    //region 버튼 섹션
    Color color = Theme.of(context).primaryColor; //색 설정

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //child widget 사이의 여유 공간을  모두 균등하게 배분
        children: [
          //row 위젯안에 들어가는 요소
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    //endregion
    //region 텍스트섹션
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),//모든 가장자리에 패딩
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,//텍스트가 영역을 넘어갈 경우 줄바꿈 여부
      ),
    );
    //endregion
    return MaterialApp(
      title: 'Flutter layout demo',//장치에서 사용자에 대한 앱을 식별하는 데 사용하는 한 줄 설명
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),//앱 바
        ),
        body: ListView(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1471115853179-bb1d604434e0?dpr=1&auto=format&fit=crop&w=767&h=583&q=80&cs=tinysrgb&crop=',
              fit: BoxFit.cover,//원본 비율을 그대로
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,//주축 가로 기준
      mainAxisAlignment: MainAxisAlignment.center,//가운데 정렬
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
