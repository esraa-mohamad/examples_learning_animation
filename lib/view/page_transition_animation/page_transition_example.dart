import 'package:flutter/material.dart';

import '../../components/const.dart';

class PageTransitionExample extends StatelessWidget {
  const PageTransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: pinkColor,
        title:  const Text(
          'Page Transition Example',
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
