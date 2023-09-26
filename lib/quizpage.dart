import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/db/db.dart';
import 'package:quiz/results.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({
    super.key,
  });

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  final data = Questions.quizedList[Questions.quizlistIndex];
  int questionindex = 0;
  late bool isCorrect;
  int? correctIndex;
  int? selectedIndex;
  int score = 0;
  CountDownController controller = CountDownController();

  checkAnswer(int index) {
    List optionslist = data[questionindex]["options"];
    String correct = data[questionindex]["correct"];
    for (String i in optionslist) {
      if (i == correct) {
        setState(() {
          correctIndex = optionslist.indexOf(i);
        });
      }
    }

    if (correctIndex == index) {
      setState(() {
        isCorrect = true;
        score += 1;
      });
    } else {
      setState(() {
        isCorrect = false;
      });
    }
    print(isCorrect);
  }

  nextQustion() {
    if (questionindex < data.length - 1) {
      setState(() {
        questionindex += 1;
        selectedIndex = null;
        correctIndex = null;
      });
    } else if (questionindex == data.length - 1) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Results(points: score)));
    }
    controller.restart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Quiz App"),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Lottie.asset("assets/animation_lmz8imkc.json",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: 30,
                      child: Text(
                        "Question no: ${questionindex + 1}/10",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey),
                    child: Center(
                        child: Text(
                      data[questionindex]["question"],
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          Color optionColor = Colors.blue.withOpacity(.5);
                          final optionslist = data[questionindex]["options"];

                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                checkAnswer(index);
                                setState(() {
                                  selectedIndex = index;
                                });
                                Future.delayed(Duration(seconds: 1))
                                    .then((value) {
                                  nextQustion();
                                  print(score);
                                });
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: index == correctIndex && isCorrect
                                          ? Colors.amber
                                          : index == selectedIndex && !isCorrect
                                              ? Colors.red
                                              : optionColor),
                                  height: 50,
                                  width: double.infinity,
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      optionslist[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ))),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: selectedIndex == null
                          ? SizedBox(
                              child: CircularCountDownTimer(
                                  controller: controller,
                                  onComplete: () {
                                    nextQustion();
                                  },
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                  width: MediaQuery.sizeOf(context).width / 4,
                                  height: MediaQuery.sizeOf(context).width / 4,
                                  duration: 20,
                                  fillColor: Colors.yellow,
                                  ringColor: Colors.blue),
                            )
                          : selectedIndex == correctIndex
                              ? Text(
                                  "Correct",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.green),
                                )
                              : Text(
                                  "Wrong",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.red),
                                )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      color: Colors.grey,
                      height: 50,
                      width: double.infinity,
                      child: selectedIndex == null
                          ? Center(child: Text("Select an option"))
                          : Center(child: Text("Next")))
                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.center,
            //   child: selectedIndex != null && selectedIndex == correctIndex
            //       ? Lottie.asset("assets/animation_lmz89jd8.json")
            //       : SizedBox(),
            // )
          ],
        ),
      ),
    );
  }
}
