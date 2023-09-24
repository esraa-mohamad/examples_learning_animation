import 'package:examples_animation/view/big_animated_container.dart';
import 'package:examples_animation/view/change_animated_crossfade.dart';
import 'package:examples_animation/view/change_animated_direction.dart';
import 'package:examples_animation/view/change_animated_padding.dart';
import 'package:examples_animation/view/change_animated_position.dart';
import 'package:examples_animation/view/model_animated_physical.dart';
import 'package:examples_animation/view/movement_animated_align.dart';
import 'package:examples_animation/view/see_animated_opacity.dart';
import 'package:examples_animation/view/text_animated_demo.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'Animation',
          style: TextStyle(
            color: Colors.amber,
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
          const [
            ButtonElevated(
              title: 'Movement Animated Align',
              page: MovementAnimatedAlign(),

            ),
            ButtonElevated(
                title: 'Big Animated Container',
                page: BigAnimatedContainer(),
            ),
            ButtonElevated(
                title: 'Text Animated Demo',
                page: TextAnimatedDemo()
            ),
            ButtonElevated(
                title: 'See Animated Opacity',
                page: SeeAnimatedOpacity()
            ),
            ButtonElevated(
                title: 'Change Animated Padding',
                page: ChangeAnimatedPadding()
            ),
            ButtonElevated(
                title: 'Model Animated Physical',
                page: ModelAnimatedPhysical()
            ),
            ButtonElevated(
                title: 'Change Animated Position',
                page: ChangeAnimatedPosition()
            ),
            ButtonElevated(
                title: 'Change Animated Direction',
                page: ChangeAnimatedDirection()
            ),
            ButtonElevated(
                title: 'Change Animated CrossFade',
                page: ChangeAnimatedCrossFade()
            ),
          ],
        ),
      ),
    );
  }
}
