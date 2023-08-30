import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daily Fortune",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: const MainPage(),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> loves = [
    "You will be single always.",
    "You will find your love until three times",
    "You will brake up soon",
    "You will be happy always",
    "You will find your love in unexpected way"
  ];

  List<String> moneys = [
    "You get much money until three times",
    "Economically hard days is waiting for you",
    "New business ideas will be good for you",
    "Don't trust susy money offers in these days",
    "Don't spare money this month. It can be bad for you."
  ];

  List<String> advices = [
    "Spend more time with your family. Because, the man who doesn't spend time with his family never can't be real man",
    "Get a job man",
    "Go sport for your health",
    "Spend more time for your education",
    "Save some money every day"
  ];

  String result = "Click and learn your fortune";

  void fortune(String type) {
    if (type == "love") {
      result = loves[Random().nextInt(5)];
    } else if (type == "money") {
      result = moneys[Random().nextInt(5)];
    } else if (type == "advice") {
      result = advices[Random().nextInt(5)];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assests/images/fortune.png",
            height: 125,
            width: 125,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                fortune("love");
              });
            },
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 28,
                  ),
                  SizedBox(width: 40.0),
                  Text(
                    "Love Situation",
                    style: TextStyle(color: Colors.red, fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                fortune("money");
              });
            },
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 14.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                    size: 28,
                  ),
                  SizedBox(width: 40.0),
                  Text(
                    "Money Situation",
                    style: TextStyle(color: Colors.green, fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                fortune("advice");
              });
            },
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 14.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.question_mark,
                    color: Colors.blue,
                    size: 28,
                  ),
                  SizedBox(width: 40.0),
                  Text(
                    "Daily Advice",
                    style: TextStyle(color: Colors.blue, fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              result,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
