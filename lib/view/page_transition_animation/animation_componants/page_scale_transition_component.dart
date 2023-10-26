import 'package:flutter/cupertino.dart';

class PageScaleTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageScaleTransitionComponent({this.page}) : super(
      pageBuilder: (context,animation,secondaryAnimation)=>page ,
      transitionsBuilder: (context,animation,secondaryAnimation,child){

        // var begin = 0.0;
        // var end = 1.0 ;
        //
        // var  tween = Tween(begin: begin, end: end);
        //
        // var curvedAnimation = CurvedAnimation(
        //     parent: animation,
        //     curve: Curves.easeInCirc
        // );

        var animationCurve = Tween<double>(
          begin: 0.5 , end:  1 ,).animate(
          CurvedAnimation(
              parent: animation,
              curve: Curves.easeInCirc
          )
        );

        return ScaleTransition(
            scale: animationCurve,
            child: child,
        );
      }
  );

}