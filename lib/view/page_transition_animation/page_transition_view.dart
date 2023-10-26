import 'package:examples_animation/view/page_transition_animation/animation_componants/page_fade_transition_component.dart';
import 'package:examples_animation/view/page_transition_animation/animation_componants/page_scale_transition_component.dart';
import 'package:examples_animation/view/page_transition_animation/page_fade_ex.dart';
import 'package:examples_animation/view/page_transition_animation/page_scale_ex.dart';
import 'package:flutter/material.dart';
import '../../components/const.dart';
import '../../widget/third_button.dart';


class PageTransitionHomeView extends StatelessWidget {
  const PageTransitionHomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pinkColor,
        automaticallyImplyLeading: false,
        title:  const Text(
          'Page Transition Animation',
          style: TextStyle(
            color: grayColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,25,20,0),
        child: ListView(
          children:
           [
              ThirdButtonElevated(
                title: 'Page Fade Example',
                page: (){
                  Navigator.of(context).push(PageFadeTransitionComponent(
                      page:const PageFadeExample())
                  );
                },
            ),
              ThirdButtonElevated(
               title: 'Page Scale Example',
               page: (){
                 Navigator.of(context).push(PageScaleTransitionComponent(
                     page:const PageScaleExample())
                 );
               },
             ),
           ]
        ),
      ),
    );
  }
}
