import 'package:flutter/cupertino.dart';

class PageSizeTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageSizeTransitionComponent({this.page}) : super(
      pageBuilder: (context,animation,secondaryAnimation)=>page ,
      transitionsBuilder: (context,animation,secondaryAnimation,child){

        return Align(
          alignment: Alignment.center,
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        );
      }
  );

}