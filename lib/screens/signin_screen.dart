import 'package:flutter/material.dart';
import 'package:fyp_app/reusable_widgets/reusable_widget.dart';
import 'package:fyp_app/screens/home_screen.dart';
import 'package:fyp_app/screens/signup_screen.dart';
import 'package:fyp_app/utils/colors_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringtToColor("FFFFFF"),
          hexStringtToColor("FFFFFF"),
          hexStringtToColor("000000")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, 125, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
              "SMART NAVI-STICK",
              style: TextStyle(
                fontFamily: 'CaviarDreams',
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
              logoWidget("assets/images/logo1.png"),
              SizedBox(
                height: 50,
              ),
              reusableTextField("Enter Username", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              SizedBox(height: 30),
              signInSignUpButton(context, true, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
              signUpOption()
            ],
          ),
        )),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account? ",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}