import 'package:flutter/material.dart';
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
  final data = Questions.questionList;
  int questionindex = 0;
  late bool isCorrect;
  int? correctIndex;
  int? selectedIndex;
  int score = 0;

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 30,
                child: Text(
                  "Question no ${questionindex + 1}/10",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: Center(
                  child: Text(
                data[questionindex]["question"].toString(),
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    Color optionColor = Colors.blue;
                    final optionslist = data[questionindex]["options"];

                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          checkAnswer(index);
                          setState(() {
                            selectedIndex = index;
                          });
                          Future.delayed(Duration(seconds: 1)).then((value) {
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
                                child: Text(
                              optionslist[index],
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ))),
                      ),
                    );
                  }),
            ),
            Center(
                child: selectedIndex == null
                    ? SizedBox()
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
            ElevatedButton(
                onPressed: () {
                  if (selectedIndex != null) {
                    nextQustion();
                  }
                },
                child: Container(
                    color: Colors.yellow,
                    height: 50,
                    width: double.infinity,
                    child: questionindex == data.length - 1
                        ? Center(child: Text("see Results"))
                        : selectedIndex == null
                            ? Center(child: Text("Select an option"))
                            : Center(child: Text("Next"))))
          ],
        ),
      ),
    );
  }
}
