import 'package:flutter/material.dart';

class NewCustomRoute extends PageRouteBuilder{

  final Widget widget;

  NewCustomRoute(this.widget):super(

    transitionDuration:Duration(seconds: 1),

    pageBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2){
      return widget;
    },

      //todo 渐变
    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
      return FadeTransition(
          opacity: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
          child: child,
      );
    }

    //todo 旋转
//    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//      return RotationTransition(
//        turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
//        child: child,
//      );
//    }

    //todo 缩放
//    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//      return ScaleTransition(
//          scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
//          child: child,
//      );
//    }

    //todo 旋转+缩小
//    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//      return RotationTransition(turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
//        child: ScaleTransition(scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
//        child: child,),
//      );
//    }

    //todo 左右滑动
//    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//      return SlideTransition(position: Tween<Offset>(begin: Offset(-1.0,0.0),end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
//        child: child,
//      );
//    }

  );

}