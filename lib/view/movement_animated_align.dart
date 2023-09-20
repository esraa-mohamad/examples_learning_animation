// movement photos
import 'package:flutter/material.dart';

class MovementAnimatedAlign extends StatefulWidget {
  const MovementAnimatedAlign({super.key});

  @override
  State<MovementAnimatedAlign> createState() => _MovementAnimatedAlignState();
}

class _MovementAnimatedAlignState extends State<MovementAnimatedAlign> {

    int geryAndTomAligned=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movement Animated Align',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedAlign(
              alignment: getGeryAndTomAlignment(geryAndTomAligned),
              duration: const Duration(microseconds: 350),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset('assets/images/gery.png'),
            ),
          ),
          AnimatedAlign(
            alignment: getGeryAndTomAlignment(geryAndTomAligned+1),
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
            geryAndTomAligned=geryAndTomAligned+1;
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

  Alignment getGeryAndTomAlignment(int aligned)
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
        return Alignment.center;
      case 7 :
        return Alignment.centerLeft;
      case 8 :
        return Alignment.centerRight;
      default :
        geryAndTomAligned = 0;
        return Alignment.topRight;
    }
    
  }


}
