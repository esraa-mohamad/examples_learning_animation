import 'package:flutter/material.dart';

class PositionTransitionExample extends StatefulWidget {
  const PositionTransitionExample({super.key});

  @override
  State<PositionTransitionExample> createState() => _PositionTransitionExampleState();
}

class _PositionTransitionExampleState
    extends State<PositionTransitionExample>
    with SingleTickerProviderStateMixin
{

  late  AnimationController controller ;
  late Animation<RelativeRect> jerryAnimation ;
  late Animation<RelativeRect> tomAnimation ;
  late Animation<RelativeRect> spikeAnimation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    jerryAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(300,300,0,0),
    ).animate(controller);

    tomAnimation=RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(200,200,0,0),
    ).animate(controller);

    spikeAnimation=RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(50,50,0,0),
    ).animate(controller);
  }

  void startAnimation()
  {
    setState(() {
      controller.reset();
      controller.forward();
    });
  }

  void closeAnimation()
  {
    setState(() {
      controller.reverse();
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
          'Positioned Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PositionedTransition(
              rect: spikeAnimation,
              child: Container(
                width: 300,
                height: 300,
                color: const Color(0xff03A0F9),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,100,0),
                  child: Image.asset('assets/images/spike.png' ,width: 500,height: 500,),
                ),
              )
          ),
          PositionedTransition(
              rect: tomAnimation,
              child: Container(
                width: 200,
                height: 200,
                color: const Color(0xff03C9F9),
                child: Image.asset('assets/images/tom.png'),
              )
          ),
          PositionedTransition(
              rect: jerryAnimation,
              child: Container(
                width: 200,
                height: 200,
                color: const Color(0xff03F9F9),
                child: Image.asset('assets/images/gery.png'),
              )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: startAnimation,
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 8,
                      ),
                      shadowColor: const Color(0xffB7F5EA),
                      backgroundColor: const Color(0xff5EE8D1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                    child: const Icon(
                      Icons.start,
                      size: 30,
                      color: Color(0xff828585),
                    ),
                ),
                ElevatedButton(
                  onPressed: closeAnimation,
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 8,
                      ),
                      shadowColor: const Color(0xffB7F5EA),
                      backgroundColor: const Color(0xff5EE8D1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  child: const Icon(
                    Icons.close_fullscreen,
                    size: 30,
                    color: Color(0xff828585),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
