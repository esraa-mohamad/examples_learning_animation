import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends  StatefulWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState() => _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample>
    with SingleTickerProviderStateMixin
{

  double opacityValue = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff5EE8D1),
        title:  const Text(
          'Tween Animation Builder Example',
          style: TextStyle(
            color: Color(0xff828585),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0  , end: opacityValue),
              duration: const Duration(milliseconds: 500),
              builder: (BuildContext context, double value, Widget? child)
              {
                return  Opacity(
                  opacity: value ,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(opacityValue * value * 40),
                      color: const Color(0xff5EE8D1),
                    ),
                  ) ,
                );
              },

            ),
            ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            shadowColor: const Color(0xffB7F5EA),
            backgroundColor: const Color(0xff5EE8D1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
        onPressed: ()
        {
          setState(() {
            opacityValue = opacityValue ==0 ? 1.0 : 0 ;
          });
        },
        child:  const Text(
          "Tween Now",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff828585),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}
