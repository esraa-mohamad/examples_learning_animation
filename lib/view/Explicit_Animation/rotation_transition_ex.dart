import 'package:flutter/material.dart';

class RotationTransitionExample extends  StatefulWidget {
  const RotationTransitionExample({super.key});

  @override
  State<RotationTransitionExample> createState() => _RotationTransitionExampleState();
}

class _RotationTransitionExampleState extends State<RotationTransitionExample> with SingleTickerProviderStateMixin{

  late  AnimationController controller ;
  late Animation<double> girlAnimation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );

    girlAnimation = Tween<double>(
        begin: 0,
        end: 5
    ).animate(controller,);

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
          'Rotation Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: RotationTransition(
          turns: girlAnimation,
          child: Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.all(10),
            color: const Color(0xff03F9F9),
            child: Image.asset('assets/images/dance.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startAnimation,
        backgroundColor: const Color(0xff5EE8D1),
        child: const Icon(
          Icons.play_arrow,
          size: 30,
          color:Color(0xff828585) ,
        ),
      ),
    );
  }
}
