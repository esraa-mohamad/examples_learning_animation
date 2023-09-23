import 'package:flutter/material.dart';

class SeeAnimatedOpacity extends StatefulWidget {
  const SeeAnimatedOpacity({super.key});

  @override
  State<SeeAnimatedOpacity> createState() => _SeeAnimatedOpacityState();
}

class _SeeAnimatedOpacityState extends State<SeeAnimatedOpacity> {

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      automaticallyImplyLeading: false,
      title:  const Text(
        'See Animated Opacity',
        style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.decelerate,
                opacity: isVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
              child: Text(
                'Tom & Jerry!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.grey[700]
                ),
              ),
            ),
            AnimatedOpacity(
              curve: Curves.easeInOut,
              opacity: isVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              child: Image.asset(
                'assets/images/gery.png',
                width: 150,
                height: 150,
              ),
            ),
            AnimatedOpacity(
              curve: Curves.elasticInOut,
              opacity: isVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 2500),
              child: Image.asset(
                'assets/images/tom.png',
                width: 150,
                height: 150,
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            isVisible = !isVisible;
          });
        },
        child:  Icon(
          isVisible ? Icons.remove_red_eye : Icons.visibility_off_outlined,
          size: 25,
          color: isVisible ? Colors.amber : Colors.red[500],
        ),
      ),
    );
  }
}
