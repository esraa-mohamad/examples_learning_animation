import 'dart:math' show pi;

import 'package:flutter/material.dart';

class AnimatedBuilderExample extends  StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample> with SingleTickerProviderStateMixin {

  late  AnimationController controller ;

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(
      reverse: true
    );
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff5EE8D1),
        title:  const Text(
          'Animated Builder Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget? child)
          {
            return Transform.rotate(
              angle: controller.value*2*pi,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.transparent,
                child: Image.asset('assets/images/dance.png'),
              ),
            );
          },
        ),
      ),
    );
  }
}
