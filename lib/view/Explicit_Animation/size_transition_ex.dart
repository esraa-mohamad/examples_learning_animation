import 'package:flutter/material.dart';

class SizeTransitionExample extends  StatefulWidget {
  const SizeTransitionExample({super.key});

  @override
  State<SizeTransitionExample> createState() => _SizeTransitionExampleState();
}

class _SizeTransitionExampleState extends State<SizeTransitionExample> with SingleTickerProviderStateMixin {

  late  AnimationController controller ;
  late Animation<double> girlAnimation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    girlAnimation = Tween<double>(
        begin: 0,
        end: 1
    ).animate(
      CurvedAnimation(
          parent: controller,
          curve: Curves.bounceInOut
      ),
    );

  }

   startAnimation()
  {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff5EE8D1),
        title:  const Text(
          'Size Transition Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: startAnimation,
          child: Container(
            width: 250,
            height: 250,
            color: const Color(0xff03C9F9),
            child: Center(
              child: SizeTransition(
                sizeFactor: girlAnimation,
                child: Container(
                  width: 250,
                  height: 250,
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xff03F9F9),
                  child: Image.asset('assets/images/dance.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
