import 'package:flutter/material.dart';

class TextAnimatedDemo extends  StatefulWidget {
  const TextAnimatedDemo({super.key});

  @override
  State<TextAnimatedDemo> createState() => _TextAnimatedDemoState();
}

class _TextAnimatedDemoState extends State<TextAnimatedDemo> {

  double fontSize =30 ;

  Color colorText = Colors.grey;

  void setAnimatedText()
  {
    setState(() {
      fontSize = 45;
      colorText=Colors.purpleAccent;
    });
  }

  void backAnimatedText()
  {
    setState(() {
      colorText =Colors.grey;
      fontSize=30;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Text Animated Demo',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           AnimatedDefaultTextStyle(
             curve: Curves.bounceIn,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: colorText,
              ),
              duration: const Duration(microseconds: 400),
              child: const Text(
                'My Name is Esraa Mohamed',
                textAlign: TextAlign.center,
              )
          ),

          const SizedBox(
            height: 35,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: setAnimatedText,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.amber,
                      size: 45,
                  )
              ),

              IconButton(
                  onPressed: backAnimatedText,
                  icon: const Icon(
                    Icons.minimize,
                    color: Colors.amber,
                    size: 45,
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
