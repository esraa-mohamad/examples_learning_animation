import 'package:examples_animation/view/page_transition_animation/page_transition_example.dart';
import 'package:flutter/material.dart';
import '../../components/const.dart';
import '../../widget/third_button.dart';
import 'animation_components/page_fade_transition_component.dart';
import 'animation_components/page_mix_fade_size_components.dart';
import 'animation_components/page_rotation_component.dart';
import 'animation_components/page_scale_transition_component.dart';
import 'animation_components/page_size_components.dart';
import 'animation_components/page_slide_components.dart';

class PageTransitionHomeView extends StatelessWidget {
  const PageTransitionHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pinkColor,
        automaticallyImplyLeading: false,
        title: const Text(
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
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: ListView(children: [
          ThirdButtonElevated(
            title: 'Page Fade Example',
            page: () {
              Navigator.of(context).push(PageFadeTransitionComponent(
                  page: const PageTransitionExample()));
            },
          ),
          ThirdButtonElevated(
            title: 'Page Scale Example',
            page: () {
              Navigator.of(context).push(PageScaleTransitionComponent(
                  page: const PageTransitionExample()));
            },
          ),
          ThirdButtonElevated(
            title: 'Page Rotation Example',
            page: () {
              Navigator.of(context).push(PageRotationTransitionComponent(
                  page: const PageTransitionExample()));
            },

          ),
          ThirdButtonElevated(
            title: 'Page Slide Example',
            page: () {
              Navigator.of(context).push(PageSlideTransitionComponent(
                  page: const PageTransitionExample()));
            },

          ),
          ThirdButtonElevated(
            title: 'Page Size Example',
            page: () {
              Navigator.of(context).push(PageSizeTransitionComponent(
                  page: const PageTransitionExample()));
            },

          ),
          ThirdButtonElevated(
            title: 'Page Mix Fade Size  Example',
            page: () {
              Navigator.of(context).push(PageMixFadeSizeTransitionComponent(
                  page: const PageTransitionExample()));
            },

          ),
        ]),
      ),
    );
  }
}
