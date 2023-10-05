import 'package:examples_animation/view/Explicit_Animation/animated_builder_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/default_textstyle_transition_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/fade_transition_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/position_transition_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/positioned_directional_transition_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/rotation_transition_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/size_transition_ex.dart';
import 'package:examples_animation/view/Explicit_Animation/tween_animation_builder_ex.dart';
import 'package:examples_animation/widget/second_button.dart';
import 'package:flutter/material.dart';

class ExplicitHomeView extends  StatefulWidget {
  const ExplicitHomeView({super.key});

  @override
  State<ExplicitHomeView> createState() => _ExplicitHomeViewState();
}

class _ExplicitHomeViewState extends State<ExplicitHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: const Color(0xff5EE8D1),
        title:  const Text(
          'Explicit Animation',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: ListView(
          children:
          const [
            SecondButtonElevated(
                title: 'Positioned Transition Example',
                page: PositionTransitionExample()
            ),
            SecondButtonElevated(
                title: 'Size Transition Example',
                page: SizeTransitionExample()
            ),
            SecondButtonElevated(
                title: 'Rotation Transition Example',
                page: RotationTransitionExample()
            ),
            SecondButtonElevated(
                title: 'Animated Builder Example',
                page: AnimatedBuilderExample()
            ),
            SecondButtonElevated(
                title: 'Fade Transition Example',
                page: FadeTransitionExample()
            ),
            SecondButtonElevated(
                title: 'Positioned Directional Transition Example',
                page: PositionedDirectionalTransitionExample()
            ),
            SecondButtonElevated(
                title: 'Tween Animation Builder Example',
                page: TweenAnimationBuilderExample()
            ),
            SecondButtonElevated(
                title: 'Default TextStyle Transition Example',
                page: DefaultTextStyleTransitionExample()
            ),
          ],
        ),
      ),
    );
  }
}
