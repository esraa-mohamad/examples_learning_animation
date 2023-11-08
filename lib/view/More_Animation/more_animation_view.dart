import 'package:examples_animation/view/More_Animation/custom_paint_animation_example.dart';
import 'package:examples_animation/view/page_transition_animation/page_transition_example.dart';
import 'package:examples_animation/widget/second_button.dart';
import 'package:flutter/material.dart';
import '../../components/const.dart';
import '../../widget/third_button.dart';

class MoreAnimationView extends StatelessWidget {
  const MoreAnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'More Animation',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: ListView(
            children:
            const [
              SecondButtonElevated(
                  title: 'Custom Paint Example',
                  page: CustomPaintAnimationExample(),
                  colorButton: orangeColor,
                  colorText: blackColor,
              ),
            ]
        ),
      ),
    );
  }
}
