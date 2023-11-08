import 'package:flutter/material.dart';

import '../../components/const.dart';

class CustomPaintAnimationExample extends StatefulWidget {
  const CustomPaintAnimationExample({super.key});

  @override
  State<CustomPaintAnimationExample> createState() => _CustomPaintAnimationExampleState();
}

class _CustomPaintAnimationExampleState extends State<CustomPaintAnimationExample>
with SingleTickerProviderStateMixin
{

  late AnimationController animationController ;
  late Animation<double> sizeAnimation ;
  late Animation<Color?> colorAnimation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
        vsync: this ,
        duration: const Duration(
          seconds: 2
        )
    );

    sizeAnimation = Tween<double>(
      begin: 50,
      end: 150,
    ).animate(animationController);

    colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.blue ,
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInCirc));

    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: orangeColor,
        title:  const Text(
          'Custom Paint Example',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: ( context, child)
          {
            return CustomPaint(
              painter: CirclePainter(sizeAnimation.value, colorAnimation.value ?? Colors.red) ,
              size: const Size.square(400),
            );
          },
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter
{
  final double _size ;
  final Color _color ;

  CirclePainter(this._size, this._color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color=_color;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width/2, size.height/2), _size, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    // ignore: unrelated_type_equality_checks
    return _size!= oldDelegate._size || _color!= oldDelegate._color ;
  }

}
