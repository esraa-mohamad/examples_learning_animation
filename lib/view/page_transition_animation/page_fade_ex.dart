import 'package:examples_animation/components/const.dart';
import 'package:flutter/material.dart';

class PageFadeExample extends StatefulWidget {
  const PageFadeExample({super.key});

  @override
  State<PageFadeExample> createState() => _PageFadeExampleState();
}

class _PageFadeExampleState extends State<PageFadeExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: pinkColor,
        title:  const Text(
          'Page Fade Example',
          style: TextStyle(
            color: grayColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
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
          child: const Text(
            'Go Back',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: grayColor,
            ),
          ),
        ),
      ),
    );
  }
}
