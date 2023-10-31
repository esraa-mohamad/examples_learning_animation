import 'package:flutter/cupertino.dart';

class PageFadeTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageFadeTransitionComponent({this.page}) : super(
    pageBuilder: (context,animation,secondaryAnimation)=>page ,
    transitionsBuilder: (context,animation,secondaryAnimation,child){
      return  Align(
        alignment: Alignment.center,
        child: FadeTransition(
            opacity: animation,
          child: child,
        ),
      );
    }
  );

}