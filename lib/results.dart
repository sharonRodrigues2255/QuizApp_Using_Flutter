import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz/quizpage.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.points});
  final int points;
  @override
  Widget build(BuildContext context) {
    print(points);
    return Scaffold(
      appBar: AppBar(title: Text("Results")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: CircularPercentIndicator(
            animation: true,
            radius: 60,
            percent: points / 10,
            progressColor: points > 5 && points < 8
                ? Colors.blue
                : points < 5
                    ? Colors.red
                    : Colors.amber,
            widgetIndicator: Text("${points * 10}"),
            center: Text(
              "${points * 10}",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Quizpage()));
              },
              child: points < 5 ? Text("Try Again") : Text("Good Job"))
        ],
      ),
    );
  }
}
