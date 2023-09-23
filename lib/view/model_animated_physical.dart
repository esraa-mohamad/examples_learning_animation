import 'package:flutter/material.dart';

class ModelAnimatedPhysical extends StatefulWidget {
  const ModelAnimatedPhysical({super.key});

  @override
  State<ModelAnimatedPhysical> createState() => _ModelAnimatedPhysicalState();
}

class _ModelAnimatedPhysicalState extends State<ModelAnimatedPhysical> {

  bool isPressed =false;

  setAnimationPhysical ()
  {
    setState(() {
      isPressed = !isPressed;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Model Animated Physical',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: setAnimationPhysical,
          child: AnimatedPhysicalModel(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            shape:BoxShape.rectangle ,
            elevation: isPressed ? 60 : 0,
            color: isPressed ? Colors.grey : Colors.blueAccent,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                isPressed ?
                  'assets/images/tom.png' :
                  'assets/images/gery.png'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
