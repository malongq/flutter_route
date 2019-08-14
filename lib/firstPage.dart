//import 'package:flutter/material.dart';
//import 'secondPage.dart';
//import 'CustomRoute.dart';
//
//class FirstPage extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      backgroundColor: Colors.lightBlueAccent,
//
//      appBar: AppBar(title: Text('第一页',style: TextStyle(fontSize: 36.0)), elevation: 0.0,backgroundColor: Colors.lightGreenAccent,),
//
//      body: Center(
//        child: MaterialButton(
//          child: Icon(Icons.navigate_next,color: Colors.white,size: 100.0,),
//          onPressed: (){
//
//            //todo 正常默认的页面翻页加载动画
////            Navigator.of(context).push(MaterialPageRoute(
////                builder: (BuildContext context){
////                  return SecondPage();
////                })
////            );
//
//            //todo 自定义加载的翻页加载动画
//            Navigator.of(context).push(CustomRoute(SecondPage()));
//
//          }
//        ),
//      )
//
//    );
//
//  }
//
//}

import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'CustomRoute.dart';
import 'NewCustomRoute.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.red,

      appBar: AppBar(
        title: Text(
          '我是第一页',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.deepPurpleAccent
          ),
        ),
        elevation: 0.0,
      ),

      body: Center(
        child: MaterialButton(
            child: Icon(Icons.accessibility_new,size: 130.0,color: Colors.white,),
            onPressed: (){
//              Navigator.of(context).push(CustomRoute(SecondPage()));
              Navigator.of(context).push(NewCustomRoute(SecondPage()));
            }
        ),
      ),

    );
  }

}