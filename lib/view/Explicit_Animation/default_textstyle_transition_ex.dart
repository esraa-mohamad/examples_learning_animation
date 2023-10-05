import 'package:flutter/material.dart';

class DefaultTextStyleTransitionExample extends StatefulWidget {
  const DefaultTextStyleTransitionExample({super.key});

  @override
  State<DefaultTextStyleTransitionExample> createState() => _DefaultTextStyleTransitionExampleState();
}

class _DefaultTextStyleTransitionExampleState
    extends State<DefaultTextStyleTransitionExample>
    with SingleTickerProviderStateMixin
{

  late  AnimationController controller ;
  late Animation<double> animation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = Tween<double> (begin: 0 , end: 1).animate(controller);

  }

  TextStyle  style_1 = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color:Color(0xff828585),
  );

  TextStyle  style_2 = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color:Color(0xff5EE8D1),
  );


  startAnimation()
  {

    setState(() {
      if(controller.status == AnimationStatus.completed)
      {
        controller.reverse();
      }
      else
      {
        controller.forward();
      }
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
          'Default TextStyle Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: animation.drive(TextStyleTween(begin: style_1 , end: style_2)),
          child: const Text(
            'Text Style Transition'
          ),
        ),
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
