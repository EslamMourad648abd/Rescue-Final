import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rescue/features/Presentation/Pages/Login_Page.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Container(
            height: 3000,
            width: 3000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/Images/Rescue app Icon.png"),
              ),
            ),
          ),
          nextScreen: Login(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
    );
  }
}
