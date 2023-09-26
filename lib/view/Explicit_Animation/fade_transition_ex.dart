import 'package:flutter/material.dart';

class FadeTransitionExample extends  StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample> with SingleTickerProviderStateMixin{


  late  AnimationController controller ;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = Tween<double>(
        begin: 0,
        end: 1
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
  }

  showTransition()
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
          'Fade Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: FadeTransition(
          opacity: animation,
          child: Container(
            width: 200,
            height: 200,
            color: const Color(0xff5EE8D1),
            child: const Center(
              child: Text(
                'Fade Transition !',
                style: TextStyle(
                  color: Color(0xff828585),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showTransition,
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
