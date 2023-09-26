import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  child:
                      Lottie.asset("assets/gUHKDdNBNk.json", fit: BoxFit.cover),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 4 - 20,
                  left: MediaQuery.of(context).size.width / 4,
                  child: Text(
                    "Quiz Time",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
