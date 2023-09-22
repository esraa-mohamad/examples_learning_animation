import 'package:examples_animation/view/big_animated_container.dart';
import 'package:examples_animation/view/movement_animated_align.dart';
import 'package:examples_animation/view/see_animated_opacityy.dart';
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
            fontSize: 30,
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
          ],
        ),
      ),
    );
  }
}
