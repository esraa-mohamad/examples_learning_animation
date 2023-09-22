import 'package:flutter/material.dart';

class BigAnimatedContainer extends StatefulWidget {
  const BigAnimatedContainer({super.key});

  @override
  State<BigAnimatedContainer> createState() => _BigAnimatedContainerState();
}

class _BigAnimatedContainerState extends State<BigAnimatedContainer> {

  Color colorBox = Colors.grey;

  String titleImage = 'assets/images/gery.png';

  double radius = 25;

  double width = 200 ;

  double height = 200 ;

  void setAnimationValue ()
  {
    setState(() {
      colorBox = Colors.orange;
      titleImage = 'assets/images/tom.png';
      width = 350;
      height = 350 ;
      radius = 50 ;
    });
  }

  void backAnimationValue ()
  {
    setState(() {
      colorBox = Colors.grey;

      titleImage = 'assets/images/gery.png';

      radius = 25;

      width = 200 ;

      height = 200 ;
    });
  }

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
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: setAnimationValue,
          child: AnimatedContainer(
            curve: Curves.easeInCubic,
            width: width,
            height: height,
            padding:  const EdgeInsets.all(18),
            duration: const Duration(microseconds: 350),
            decoration: BoxDecoration(
              color: colorBox,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Image.asset(titleImage),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: backAnimationValue,
        child: const Icon(
          Icons.animation,
          color: Colors.amber,
            size: 25,
        ),
      ),
    );
  }
}
