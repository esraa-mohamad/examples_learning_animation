import 'package:flutter/cupertino.dart';

class PageMixFadeSizeTransitionComponent extends PageRouteBuilder
{

  final dynamic page;

  PageMixFadeSizeTransitionComponent({this.page}) : super(
      pageBuilder: (context,animation,secondaryAnimation)=>page ,
      transitionsBuilder: (context,animation,secondaryAnimation,child){

        return Align(
          alignment: Alignment.center,
          child: SizeTransition(
            sizeFactor: animation,
            child: FadeTransition(
                opacity: animation,
                child: child
            ),
          ),
        );
      }
  );

}