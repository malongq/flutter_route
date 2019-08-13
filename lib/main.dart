import 'package:flutter/material.dart';
import 'firstPage.dart';

void main()=>runApp(MyApp());

//todo flutter 页面过度动画
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '页面过度动画',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: FirstPage(),
    );
  }
}