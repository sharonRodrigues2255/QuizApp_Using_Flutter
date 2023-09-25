import 'package:flutter/material.dart';

class Quizpage extends StatelessWidget {
  const Quizpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.grey,
              child: Center(
                  child: Text(
                question!,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              )),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey,
              child: Text(option1!),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey,
              child: Text(option2!),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey,
              child: Text(option3!),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey,
              child: Text(option4!),
            ),
          ],
        ),
      ),
    );
  }
}
