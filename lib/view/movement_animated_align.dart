import 'package:flutter/material.dart';

class MovementAnimatedAlign extends StatefulWidget {
  const MovementAnimatedAlign({super.key});

  @override
  State<MovementAnimatedAlign> createState() => _MovementAnimatedAlignState();
}

class _MovementAnimatedAlignState extends State<MovementAnimatedAlign> {

    int geryAligned=0;

    int tomAligned =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Movement Animated Align',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            curve: Curves.easeInCirc,
              alignment: getGeryAlignment(tomAligned),
              duration: const Duration(microseconds: 350),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset('assets/images/gery.png'),
            ),
          ),
          AnimatedAlign(
            curve: Curves.linear,
            alignment: getTomAlignment(tomAligned),
            duration: const Duration(microseconds: 500),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset('assets/images/tom.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            geryAligned=geryAligned+1;
            tomAligned=tomAligned+1;
          });
        },
        child: const Icon(
          Icons.move_down,
          size: 25,
          color: Colors.black,
        ),
      ),
    );
  }

  Alignment getGeryAlignment(int aligned)
  {
    switch(aligned){
      case 1 :
        return Alignment.topCenter;
      case 2 :
        return Alignment.bottomRight;
      case 3 :
        return Alignment.topLeft;
      case 4 :
        return Alignment.bottomCenter;
      case 5 :
        return Alignment.bottomLeft;
      case 6 :
        return Alignment.centerRight;
      case 7 :
        return Alignment.centerLeft;
      case 8 :
        return Alignment.center;
      default :
        geryAligned = 0;
        return Alignment.topRight;
    }
    // gery
     // 0 : top right , 1 : top center , 2 : bottom right , 3: top left , 4 : bottom center
    // 5: bottom left , 6 center right , 7: center left , 8: center

  }
     // tom
    // 1: top right , 2: top center , 3: bottom right , 4: top left , 5: bottom center
   // 6: bottom left , 7: center right , 8:center , 0: center left
    Alignment getTomAlignment(int aligned) {
      switch (aligned) {
        case 1 :
          return Alignment.topRight;
        case 2 :
          return Alignment.topCenter;
        case 3 :
          return Alignment.bottomRight;
        case 4 :
          return Alignment.topLeft;
        case 5 :
          return Alignment.bottomCenter;
        case 6 :
          return Alignment.bottomLeft;
        case 7 :
          return Alignment.centerRight;
        case 8 :
          return Alignment.center;
        default :
          tomAligned = 0;
          return Alignment.centerLeft;
      }
    }


}
