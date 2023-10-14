import 'dart:async';

import 'package:epidise_clone/Quiz.dart';
import 'package:flutter/material.dart';

class Load2 extends StatefulWidget {
  // const LoadingPage({
  //   Key? key,
  // }) : super(key: key);
  @override
  State<Load2> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<Load2> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Quiz(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Loading...",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 116, 107),
              fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: LinearProgressIndicator(
              value: 0.7,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 0, 116, 107)),
              minHeight: 10,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone_android,
              color: Color.fromARGB(255, 0, 116, 107),
              size: 20,
            ),
            SizedBox(width: 10),
            Text(
              "Let's set you up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 116, 107)),
            ),
          ],
        )
      ]),
    ));
    //
  }
}
