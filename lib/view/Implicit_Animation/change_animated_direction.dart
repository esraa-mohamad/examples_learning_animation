import 'package:flutter/material.dart';

class ChangeAnimatedDirection extends StatefulWidget {
  const ChangeAnimatedDirection({super.key});

  @override
  State<ChangeAnimatedDirection> createState() => _ChangeAnimatedDirectionState();
}

class _ChangeAnimatedDirectionState extends State<ChangeAnimatedDirection> {

  double start = 0;
  double top = 0;

  moveLeft(){
    setState(() {
      start -= 50;
      if(start<0)
      {
          start =0;
      }
    });
  }
  moveTop(){
    setState(() {
      top -= 50;
      if(top<0)
      {
        top =0;
      }
    });
  }
  moveRight(){
    setState(() {
      start += 50;
      if(start > MediaQuery.of(context).size.width-120)
      {
        start =MediaQuery.of(context).size.width-120;
      }
    });
  }
  moveDown(){
    setState(() {
      top +=50;
      if(top > MediaQuery.of(context).size.height-300)
      {
        top =MediaQuery.of(context).size.height-300;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const Text(
          'Change Animated Direction',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
              start: start,
              top: top,
              curve: Curves.easeInOutQuint,
              duration: const Duration(milliseconds: 400),
              child: Container(
                color: Colors.transparent,
                width: 120,
                height: 120,
                child: Image.asset('assets/images/dance.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: moveLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey
                      ),
                      child:const Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: moveTop,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                          vertical: 5
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey
                      ),
                      child: const Icon(
                        Icons.arrow_upward,
                        size: 25,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: moveRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                          vertical: 5
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: moveDown,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                          vertical: 5
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        size: 25,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
