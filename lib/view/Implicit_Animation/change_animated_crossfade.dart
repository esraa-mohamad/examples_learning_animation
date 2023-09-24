import 'package:flutter/material.dart';

class ChangeAnimatedCrossFade extends StatefulWidget {
  const ChangeAnimatedCrossFade({super.key});

  @override
  State<ChangeAnimatedCrossFade> createState() => _ChangeAnimatedCrossFadeState();
}

class _ChangeAnimatedCrossFadeState extends State<ChangeAnimatedCrossFade> {

 bool isCrossFade= true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title:  const Text(
         'Change Animated CrossFade',
         style: TextStyle(
           color: Colors.amber,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
       ),
       centerTitle: true,
     ),
      body:  Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              isCrossFade = !isCrossFade ;
            });
          },
          child: AnimatedCrossFade(
            firstCurve: Curves.decelerate,
            secondCurve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            firstChild: Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('assets/images/spike.png'),
            ),
            secondChild: Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('assets/images/gery.png'),
            ),
            crossFadeState: isCrossFade ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ),
      ),
    );
  }
}
