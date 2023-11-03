import 'package:flutter/cupertino.dart';

class PageMixScaleRotateTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageMixScaleRotateTransitionComponent({this.page}) : super(
      pageBuilder: (context,animation,secondaryAnimation)=>page ,
      transitionsBuilder: (context,animation,secondaryAnimation,child){

        var animationCurve1 = Tween<double>(
          begin: 0.5 , end:  1 ,).animate(
            CurvedAnimation(
                parent: animation,
                curve: Curves.bounceInOut
            )
        );
        var animationCurve2 = Tween<double>(
          begin: 0.5 , end:  2 ,).animate(
            CurvedAnimation(
                parent: animation,
                curve: Curves.decelerate
            )
        );
        return ScaleTransition(
          scale: animationCurve1,
          child: RotationTransition(
              turns: animationCurve2,
              child: child
          ),
        );
      }
  );

}