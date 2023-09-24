import 'package:flutter/material.dart';
import '../../widget/button.dart';
import 'add_animated_list.dart';
import 'big_animated_container.dart';
import 'change_animated_crossfade.dart';
import 'change_animated_direction.dart';
import 'change_animated_padding.dart';
import 'change_animated_position.dart';
import 'model_animated_physical.dart';
import 'movement_animated_align.dart';
import 'see_animated_opacity.dart';
import 'switch_animated_switcher.dart';
import 'text_animated_demo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'Implicit Animation',
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
            ButtonElevated(
                title: 'Switch Animated Switcher',
                page: SwitchAnimatedSwitcher()
            ),
            ButtonElevated(
                title: 'Add Animated List',
                page: AddAnimatedList()
            ),
          ],
        ),
      ),
    );
  }
}
