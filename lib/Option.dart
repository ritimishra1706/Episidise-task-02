import 'package:epidise_clone/LoginPage.dart';
import 'package:epidise_clone/main.dart';
import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.all(40),
            child: Image.asset(
              "images/dearie.jpg",
              height: 300,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 158),
            child: Text(
              "Hello Dearie!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              "Get ready to make yourself glow!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(right: 30, left: 30, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color.fromARGB(255, 0, 118, 107),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(children: [
                InkWell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130, right: 50),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 118, 107),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                )
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            child: Material(
              color: Color.fromARGB(255, 0, 118, 107),
              borderRadius: BorderRadius.circular(18),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                    height: 2.0,
                    width: 160,
                    color: Colors.black26,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Or"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                    height: 2.0,
                    width: 160,
                    color: Colors.black26,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Image.asset(
                    'images/facebook2.png',
                  ),
                  iconSize: 60, // Replace with your Facebook icon image
                  onPressed: () {
                    // Handle Facebook button press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Image.asset('images/google.png'),
                  iconSize: 60, // Replace with your Google icon image
                  onPressed: () {
                    // Handle Google button press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Image.asset('images/twitter.png'),
                  iconSize: 60, // Replace with your Google icon image
                  onPressed: () {
                    // Handle Google button press
                  },
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 40),
          //   child: Icon(
          //     Icons.facebook_outlined,
          //     color: Colors.blue,
          //     size: 50,
          //   ),
          // )
        ])));
  }
}
