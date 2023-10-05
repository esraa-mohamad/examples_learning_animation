import 'package:flutter/material.dart';

class IndexedStackTransitionExample extends  StatefulWidget {
  const IndexedStackTransitionExample({super.key});

  @override
  State<IndexedStackTransitionExample> createState() => _IndexedStackTransitionExampleState();
}

class _IndexedStackTransitionExampleState
    extends State<IndexedStackTransitionExample>
    with SingleTickerProviderStateMixin
{

  late  AnimationController controller ;
  late Animation<double> opacityAnimation ;
  late Animation<double> scaleAnimation ;
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    opacityAnimation = Tween<double>(begin: 0.0 , end: 1.0).animate(controller);
    scaleAnimation = Tween<double>(begin: 0.5 , end: 1.0).animate(controller);
    controller.forward();
  }

  void startAnimation()
  {

    index = index +1 ;
    if(index == 3 )
    {
      index =0 ;
    }
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
          'Indexed Stack Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body:  IndexedStack(
        index: index,
        children: [
          ScaleTransition(
            scale: scaleAnimation,
            child: FadeTransition(
              opacity: opacityAnimation,
              child: Container(
                alignment: Alignment.center,
                color: const Color(0xffA9F9F9),
                child: Image.asset('assets/images/spike.png' ,width: 500,height: 500,),
              ),
            ),
          ),
          ScaleTransition(
            scale: scaleAnimation,
            child: Container(
              height: double.infinity,
              color: const Color(0xff78CCCC),
              child: Image.asset('assets/images/tom.png',width: 500,height: 500,),
            ),
          ),
          ScaleTransition(
            scale: scaleAnimation,
            child: Container(
              height: double.infinity,
              color: const Color(0xff0AFAFA),
              child: Image.asset('assets/images/gery.png',width: 500,height: 500,),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startAnimation,
        backgroundColor: const Color(0xff5EE8D1),
        child: const Icon(
          Icons.arrow_forward,
          size: 25,
          color: Color(0xff828585),
        ),
      ),
    );
  }
}
