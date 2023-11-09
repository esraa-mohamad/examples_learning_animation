import 'package:examples_animation/view/More_Animation/custom_paint_animation_example.dart';
import 'package:examples_animation/view/More_Animation/rive_flare_animation_ex.dart';
import 'package:examples_animation/widget/second_button.dart';
import 'package:flutter/material.dart';
import '../../components/const.dart';
import 'lotti_animation_ex.dart';

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
              SecondButtonElevated(
                title: 'Lotti Animation Example',
                page: LottiAnimationExample(),
                colorButton: orangeColor,
                colorText: blackColor,
              ),
              SecondButtonElevated(
                title: 'Rive (Flare) Example',
                page: RiveFlareAnimationExample(),
                colorButton: orangeColor,
                colorText: blackColor,
              ),
            ]
        ),
      ),
    );
  }
}
