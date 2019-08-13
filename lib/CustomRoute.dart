//import 'package:flutter/material.dart';
//
//class CustomRoute extends PageRouteBuilder{
//
//  final Widget widget;
//
//  CustomRoute(this.widget)
//
//      :super(
//
//      transitionDuration:const Duration(seconds:1),
//
//      pageBuilder:
//          (BuildContext context, Animation<double> animation1, Animation<double> animation2)
//          {
//            return widget;
//          },
//
//      //todo 渐隐渐现的动画效果
//      transitionsBuilder:
//          (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child)
//          {
//            return FadeTransition(
//              opacity: Tween(begin:0.0,end :1.0).animate(CurvedAnimation(
//                  parent:animation1,
//                  curve:Curves.fastOutSlowIn
//              )),
//              child: child,
//            );
//          }
//
//  );
//
//}

import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder{

  final Widget widget;

  CustomRoute(this.widget):super(
    transitionDuration:Duration(seconds: 1),
    pageBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2){
      return widget;
    },

    //TODO 渐变 加载
//    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//      return FadeTransition(
//        opacity: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),//Curves.fastOutSlowIn这个可以变换很多效果
//        child: child,
//      );
//    }

    //TODO 缩放 加载
//    transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//      return ScaleTransition(
//          scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
//          child: child,
//      );
//    }

      //TODO 旋转+缩放 加载
//      transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
//        return RotationTransition(
//            turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
//                parent: a1, curve: Curves.fastOutSlowIn)),
//                child: ScaleTransition(
//                    scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
//                        parent: a1, curve: Curves.fastOutSlowIn)),
//                        child: child,
//                ),
//        );
//      }

      //TODO 左右滑动 加载
      transitionsBuilder:(BuildContext context,Animation<double> a1,Animation<double> a2,Widget child){
        return SlideTransition(
            position: Tween<Offset>(begin: Offset(-1.0, 0.0),end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: a1, curve: Curves.fastOutSlowIn)),
            child: child,
        );
      }


  );


}