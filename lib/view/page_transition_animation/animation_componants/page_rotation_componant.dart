import 'package:flutter/cupertino.dart';

class PageRotationTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageRotationTransitionComponent({this.page}) : super(
      pageBuilder: (context,animation,secondaryAnimation)=>page ,
      transitionsBuilder: (context,animation,secondaryAnimation,child){


        var animationCurve = Tween<double>(
          begin: 0.5 , end:  1 ,).animate(
            CurvedAnimation(
                parent: animation,
                curve: Curves.linear
            )
        );

        return RotationTransition(
          turns: animationCurve,
          child: child,
        );
      }
  );

}