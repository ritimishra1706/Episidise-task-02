import 'package:epidise_clone/HomePage.dart';
import 'package:epidise_clone/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class OnBoardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreens(),
    );
  }
}

class OnboardingScreens extends StatefulWidget {
  @override
  _OnboardingScreensState createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _pageController = PageController();
  final List<OnboardingData> onboardingData = [
    OnboardingData(
      imagePath: 'images/girl.jpg',
      textLine1: "We understand every skin type",
      textLine2: "Your skin is unique, so is our approach to skincare",
    ),
    OnboardingData(
      imagePath: 'images/weuse.png',
      textLine1: "Simple access to remote dermatological support",
      textLine2: "Get the care you need, when you need it",
    ),
    OnboardingData(
      imagePath: 'images/science2.png',
      textLine1: "We use science to understand your skin.",
      textLine2: "Science-based skincare that's good",
    ),
  ];

  double _currentPage = 0.0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            itemBuilder: (context, index) {
              return OnboardingScreen(
                data: onboardingData[index],
                onPageChanged: (page) {
                  if (page < onboardingData.length) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  } else {
                    // Handle navigation to the main app screen when onboarding is complete.
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
              );
            },
          ),
          Positioned(
            top: 20,
            right: 20,
            child: TextButton(
              onPressed: () {
                // Handle skipping onboarding to navigate to the main app screen.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 78,
            left: 56,
            right: 56,
            child: CustomLoadingSlider(
              itemCount: onboardingData.length,
              currentPage: _currentPage,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingData {
  final String imagePath;
  final String textLine1;
  final String textLine2;

  OnboardingData({
    required this.imagePath,
    required this.textLine1,
    required this.textLine2,
  });
}

class OnboardingScreen extends StatelessWidget {
  final OnboardingData data;
  final Function(int) onPageChanged;

  OnboardingScreen({required this.data, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Image.asset(
                data.imagePath,
                width: 318,
                height: 460,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: data.textLine1,
                          style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\n' + '\n' + data.textLine2,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: const Color.fromARGB(255, 70, 69, 69),
                              // Color for the first paragraph
                              fontWeight: FontWeight.normal),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(height: 20),
            Material(
              color: Color.fromARGB(255, 0, 118, 107),
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  onPageChanged(1);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}

class CustomLoadingSlider extends StatelessWidget {
  final int itemCount;
  final double currentPage;

  CustomLoadingSlider({required this.itemCount, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    final double sliderWidth = 200.0;
    final double segmentWidth = sliderWidth / itemCount;
    final double progress = (currentPage + 1) / itemCount;
    return Container(
      width: sliderWidth,
      height: 10.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress,
        child: Container(color: Color.fromARGB(255, 0, 118, 107)),
      ),
    );
  }
}

// class OnBoardingPage2 extends StatelessWidget {
//   const OnBoardingPage2({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         padding: EdgeInsets.all(5),
//         child: Column(
//           children: [
//             SizedBox(height: 5),

//             Padding(
//               padding: EdgeInsets.all(10),
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => (OnBoardPage3())));
//                 },
//                 child: Text(
//                   "SKIP",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ),
//             Image.asset(
//               "images/girl.jpg",
//               height: 437,
//               width: 318,

//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// class SplashContent extends StatelessWidget{
//   const SplashContent
// }
