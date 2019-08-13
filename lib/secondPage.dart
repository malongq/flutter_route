//import 'package:flutter/material.dart';
//
//class SecondPage extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      backgroundColor: Colors.deepPurpleAccent,
//
//      appBar: AppBar(title: Text('第二页',style: TextStyle(fontSize: 36.0),),elevation: 0.0,backgroundColor: Colors.green,),
//
//      body: Center(
//        child: MaterialButton(
//            child: Icon(Icons.accessibility_new,color: Colors.white,size: 100.0,),
//            onPressed: (){
//              Navigator.of(context).pop();
//            }
//        ),
//      )
//
//    );
//
//  }
//
//}

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueAccent,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '我是第二页',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blueAccent
          ),
        ),
        leading: Container(),
        elevation: 4.0,
      ),

      body: Center(
        child: MaterialButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
          child: Icon(Icons.directions_run,size: 130.0,color: Colors.white,)
        ),
      ),

    );
  }

}