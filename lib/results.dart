import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz/quizpage.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.points});
  final int points;
  @override
  Widget build(BuildContext context) {
    print(points);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Results",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Lottie.asset("assets/animation_lmzamajl.json",
                    fit: BoxFit.fill)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: CircularPercentIndicator(
                    animation: true,
                    radius: 60,
                    percent: points / 10,
                    backgroundColor: Colors.brown,
                    progressColor: points < 5 ? Colors.blue : Colors.amber,
                    widgetIndicator: Text("${points * 10}"),
                    center: Text(
                      "$points/10",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Quizpage()));
                      },
                      child: points < 5 ? Text("Try Again") : Text("Good Job")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
