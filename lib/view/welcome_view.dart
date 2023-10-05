import 'package:animated_background/animated_background.dart';
import 'package:examples_animation/view/Explicit_Animation/explicit_home.dart';
import 'package:examples_animation/view/Implicit_Animation/implicit_home_view.dart';
import 'package:examples_animation/widget/second_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomeView extends  StatefulWidget {
   const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>  with SingleTickerProviderStateMixin{
  Color backColor = const Color(0xffE666F8);

  Color colorText = const Color(0xff3E3A3E);

  ParticleOptions particles = const ParticleOptions(
    baseColor: Color(0xffF40BF4),
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 70,
    spawnMaxRadius: 15.0,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 7.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: backColor,
        title:   Text(
          'Welcome To Animation',
          style: TextStyle(
            color:colorText ,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(options: particles),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,0),
          child: ListView(
            children: [
              SecondButtonElevated(
                  title: 'Implicit Animation Home',
                  page: const ImplicitHomeView(),
                colorButton:   backColor,
                colorText: colorText,
              ),
              SecondButtonElevated(
                title: 'Explicit Animation Home',
                page: const ExplicitHomeView(),
                colorButton:   backColor,
                colorText: colorText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
