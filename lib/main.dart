import 'package:examples_animation/view/home_view.dart';
import 'package:examples_animation/view/movement_animated_align.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

