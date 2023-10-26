import 'package:examples_animation/components/const.dart';
import 'package:flutter/material.dart';

class ThirdButtonElevated extends  StatelessWidget {
  const ThirdButtonElevated({super.key, required this.title, required this.page ,});

  final String title ;
  final VoidCallback page ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            shadowColor: const Color(0xffFBF8FB),
            backgroundColor: pinkColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
        onPressed:page,
        child:  Text(
          title,
          textAlign: TextAlign.center,
          style:  const TextStyle(
            color: grayColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
