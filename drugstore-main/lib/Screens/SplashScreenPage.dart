
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            "Images/Doctor_Splash.json",
            repeat: false,
            onLoaded: (p0) => Future.delayed(p0.duration, () {
              Navigator.pushReplacementNamed(context, '/');
            }),
          ),
          const Text(
            "Welcome In Your Drugstore",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
