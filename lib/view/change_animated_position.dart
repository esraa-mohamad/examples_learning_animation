import 'package:flutter/material.dart';

class ChangeAnimatedPosition extends StatefulWidget {
  const ChangeAnimatedPosition({super.key});

  @override
  State<ChangeAnimatedPosition> createState() => _ChangeAnimatedPositionState();
}

class _ChangeAnimatedPositionState extends State<ChangeAnimatedPosition> {

  bool startEating = true ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Change Animated Position',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            AnimatedPositioned(
                top: 0,
                left: 0,
                curve: Curves.decelerate,
                duration: const Duration(seconds: 1),
                child: Container(
                  color: Colors.transparent,
                  width: 150,
                  height: 150,
                  child: Image.asset(
                      'assets/images/cheese.png',
                    width: 150,
                    height: 150,
                  ),
                ),
            ),
            AnimatedPositioned(
              top: 0,
              left:startEating ? MediaQuery.of(context).size.width-170 :0,
              curve: Curves.bounceInOut,
              duration: const Duration(seconds: 1),
              child: Container(
                color: Colors.transparent,
                width: 150,
                height: 150,
                child: Image.asset(
                    'assets/images/gery.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            AnimatedPositioned(
              top: startEating ? MediaQuery.of(context).size.width/2 :0,
              left: startEating ? MediaQuery.of(context).size.width/2 :0,
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: Container(
                color: Colors.transparent,
                width: 180,
                height: 180,
                child: Image.asset(
                    'assets/images/spike.png',
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            AnimatedPositioned(
              top:startEating ? MediaQuery.of(context).size.height-300 :0,
              left: 0,
              curve: Curves.easeInCirc,
              duration: const Duration(seconds: 1),
              child: Container(
                color: Colors.transparent,
                width: 150,
                height: 150,
                child: Image.asset(
                    'assets/images/tom.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            startEating = !startEating;
          });
        },
        child:  Icon(
          startEating ?
          Icons.place :
          Icons.back_hand_rounded,
          size: 30,
          color: startEating ?  Colors.amber : Colors.red,
        ),
      ),
    );
  }
}
