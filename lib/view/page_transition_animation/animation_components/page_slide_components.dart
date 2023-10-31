import 'package:flutter/cupertino.dart';

class PageSlideTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageSlideTransitionComponent({this.page}) : super(
      pageBuilder: (context,animation,secondaryAnimation)=>page ,
      transitionsBuilder: (context,animation,secondaryAnimation,child){


        var tween = Tween<Offset>(
          begin: const Offset(0,1) , end:  Offset.zero ,);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      }
  );

}