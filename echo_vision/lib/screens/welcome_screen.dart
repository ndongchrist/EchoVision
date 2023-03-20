import 'package:flutter/material.dart';

import '../components/constants.dart';
import 'home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('images/Frame 6.png'), scale: 1.0),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Text(
                'Welcome to',
                style: kHeadingStyle,
              ),
              Text(
                "Echo Vision",
                style: kSubHeadingStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Android Application which offers services to ",
                style: kNormalStyle,
              ),
              Text("help people who are visually impaired.",
                  style: kNormalStyle),
              SizedBox(
                height: 160,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButtonStyle(
                      text: 'Register', color: kPrimaryColor, child: Home()),
                  SizedBox(
                    height: 20,
                  ),
                  TextButtonStyle(
                      text: 'Login', color: Color(0XFFafbbef), child: Home()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextButtonStyle extends StatelessWidget {
  TextButtonStyle({
    required this.text,
    required this.color,
    required this.child,
  });
  final String text;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => child,
            ),
          );
        },
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
