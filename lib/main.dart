import 'package:examples_animation/view/Explicit_Animation/explicit_home.dart';
import 'package:examples_animation/view/Implicit_Animation/implicit_home_view.dart';
import 'package:examples_animation/view/welcome_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home:  WelcomeView(),
    );
  }
}

