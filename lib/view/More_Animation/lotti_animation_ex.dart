import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../components/const.dart';

class LottiAnimationExample extends StatefulWidget {
  const LottiAnimationExample({super.key});

  @override
  State<LottiAnimationExample> createState() => _LottiAnimationExampleState();
}

class _LottiAnimationExampleState extends State<LottiAnimationExample> {

  final List<String> animationPath =
  [
    'assets/lotti/bird.json',
    'assets/lotti/car.json',
    'assets/lotti/tigger.json'
  ];

  final PageController pageController = PageController();

  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    stopAnimation();
    super.dispose();
  }

  void startAnimation ()
  {
    Future.delayed(const Duration(seconds: 3)).then((value)
    {
      if(currentPage == animationPath.length-1)
        {
          pageController.animateToPage(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear
          );
        }
      else
      {
        pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear
        );
      }
      startAnimation();
    });
  }

  void stopAnimation()
  {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: orangeColor,
        title:  const Text(
          'Lotti Animation Example',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: PageView.builder(
          controller:pageController,
          onPageChanged: (int page)
          {
            setState(() {
              currentPage = page;
            });
          },
          itemCount: animationPath.length,
          itemBuilder: (context , index)
              {
                  return Center(
                    child:  Lottie.asset(
                        animationPath[index],
                        repeat:  true,
                        reverse: false,
                    ),
                  );
              }
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int page )
        {
          pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceOut
          );
        },
        items:
        const [
          BottomNavigationBarItem(
              icon:Icon(
                Icons.cloud,
                color: orangeColor,
              ),
            label: 'Bird',
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.car_repair,
              color: orangeColor,
            ),
            label: 'Car',
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.animation_rounded,
              color: orangeColor,
            ),
            label: 'Tiger',
          ),
        ],
      ),
    );
  }
}
