import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../components/const.dart';

class RiveFlareAnimationExample extends StatefulWidget {
  const RiveFlareAnimationExample({super.key});

  @override
  State<RiveFlareAnimationExample> createState() => _RiveFlareAnimationExampleState();
}

class _RiveFlareAnimationExampleState extends State<RiveFlareAnimationExample> {

  final List<String> animationPath =
  [
    'assets/rive/bear.riv',
    'assets/rive/girl.riv',
    'assets/rive/rating.riv'
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
          'Rive (Flare) Animation Example',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: PageView.builder(
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
              child:  RiveAnimation.asset(
                animationPath[index],
              ),
            );
          },
        controller:pageController,
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
              Icons.ac_unit,
              color: orangeColor,
            ),
            label: 'Bear',
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.girl,
              color: orangeColor,
            ),
            label: 'Girl',
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.star,
              color: orangeColor,
            ),
            label: 'Rating',
          ),
        ],
      ),
    );
  }
}
