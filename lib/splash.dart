import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/quizpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Quizpage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            child: Lottie.asset("assets/Animation - 1695630670813.json",
                fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
