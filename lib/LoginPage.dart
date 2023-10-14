import 'package:epidise_clone/Load2.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final _formfield = GlobalKey<FormState>();

  final emailControl = TextEditingController();

  final passControl = TextEditingController();

  bool passToggle = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _formfield,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(40),
              child: Image.asset(
                "images/dearie.jpg",
                height: 150,
                width: 300,
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
              padding: const EdgeInsets.only(right: 60, left: 26, top: 10),
              child: Text(
                "Please fill your login details carefully",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20, top: 30),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailControl,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 118, 107)),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Email";
                    }

                    bool emailValid =
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'+-]+")
                            .hasMatch(value);

                    if (!emailValid) {
                      return "Enter valid Email";
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20, top: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passControl,
                obscureText: passToggle,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 118, 107)),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: Text("Forgot Password?"),
            ),
            SizedBox(
              height: 15,
            ),
            Material(
              color: Color.fromARGB(255, 0, 118, 107),
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Load2(),
                    ),
                  );

                  // if (_formfield.currentState.validate()) {
                  //   print("Sucess");
                  //   emailControl.clear();
                  //   passControl.clear();
                  // }
                  // onPageChanged(1);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
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
                SizedBox(
                  height: 30,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Image.asset(
                      'images/facebook2.png',
                    ),
                    iconSize: 50, // Replace with your Facebook icon image
                    onPressed: () {
                      // Handle Facebook button press
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Image.asset('images/google.png'),
                    iconSize: 50, // Replace with your Google icon image
                    onPressed: () {
                      // Handle Google button press
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: IconButton(
                    icon: Image.asset('images/twitter.png'),
                    iconSize: 50, // Replace with your Google icon image
                    onPressed: () {
                      // Handle Google button press
                    },
                  ),
                ),
              ],
            ),
            Text("By continuing you agree to our"),
            Text("Terms of services and Privacy policy",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[600])),
          ],
        ),
      ),
    );
  }
}
