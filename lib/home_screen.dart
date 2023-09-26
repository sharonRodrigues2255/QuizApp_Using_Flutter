import 'package:flutter/material.dart';
import 'package:quiz/db/db.dart';
import 'package:quiz/quizpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Python",
      "Flutter",
      "Dot net",
      "MEARN",
      "Aptitude"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a category"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 4,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Questions.quizlistIndex = index;
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Quizpage()));
                        },
                        child: Container(
                          color: Colors.grey,
                          height: 60,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                            categories[index],
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
