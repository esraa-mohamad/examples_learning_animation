import 'package:examples_animation/widget/button.dart';
import 'package:flutter/material.dart';

class SwitchAnimatedSwitcher extends StatefulWidget {
  const SwitchAnimatedSwitcher({super.key});

  @override
  State<SwitchAnimatedSwitcher> createState() => _SwitchAnimatedSwitcherState();
}

class _SwitchAnimatedSwitcherState extends State<SwitchAnimatedSwitcher> {

  bool isSwitcher = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Big Animated Container',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: AnimatedSwitcher(
          switchInCurve: Curves.bounceIn,
          switchOutCurve: Curves.bounceInOut,
          duration: const Duration(milliseconds: 500),
          child: isSwitcher ?
          const ButtonElevated(
              title: 'Click Here',
              page: SwitchAnimatedSwitcher()
          ) :
          const CircularProgressIndicator(
            color: Colors.blueGrey,

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            isSwitcher = !isSwitcher;
          });
        },
        child: const Icon(
          Icons.change_circle,
          size: 30,
          color: Colors.amber,
        ),
      ),
    );
  }
}
