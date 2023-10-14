import 'package:epidise_clone/onboardingPage1.dart';
import 'package:flutter/material.dart';

class Setup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                    children: [
                      TextSpan(
                        text: 'You are all set up !',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Text(
              //   '\"Skincare is not superficial because it\'s healthcare. When you have beautiful skin it\'s a sign that you have a healthy mind and body.\" ',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold),
              //   textAlign: TextAlign.center,
              // // ),
              // SizedBox(height: 16),
              // Text(
              //   "- DR MURAD",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 18,
              //     fontWeight: FontWeight.w500,
              //   ),
              // )
            ],
          ),
        ),
      )),
      //backgroundColor: Color.fromARGB(255, 1, 163, 147),
    );
  }
}
