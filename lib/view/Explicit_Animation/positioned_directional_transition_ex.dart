import 'package:flutter/material.dart';

class PositionedDirectionalTransitionExample extends StatefulWidget {
  const PositionedDirectionalTransitionExample({super.key});

  @override
  State<PositionedDirectionalTransitionExample> createState() => _PositionedDirectionalTransitionExampleState();
}

class _PositionedDirectionalTransitionExampleState
    extends State<PositionedDirectionalTransitionExample>
    with SingleTickerProviderStateMixin
{

  late  AnimationController controller ;
  late Animation<RelativeRect> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(80,80,0,0),
    ).animate(controller);
  }

  startAnimation()
  {
    setState(() {
      controller.reset();
      controller.forward();
    });
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
          'Positioned Directional Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: controller,
            builder: (BuildContext context, Widget? child)
            {
              return PositionedDirectional(
                start: animation.value.left,
                end: animation.value.right,
                bottom: animation.value.bottom,
                top: animation.value.top,
                child: Container(
                    color: const Color(0xff5EE8D1),
                  )
              );
            },

          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startAnimation,
        backgroundColor: const Color(0xff5EE8D1),
        child: const Icon(
          Icons.play_arrow,
          size: 25,
          color: Color(0xff828585),
        ),
      ),
    );
  }
}
