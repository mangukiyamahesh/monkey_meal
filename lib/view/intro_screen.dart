import 'dart:async';

import 'package:flutter/material.dart';
import 'package:monkey_meal/view/welcome_page.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomePage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/Monkey face.png'),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Meal',
                style: TextStyle(
                    color: Color(0xffFC6011),
                    fontSize: height * 0.032,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Monkey',
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: height * 0.032,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            'FOOD DELIVERY',
            style: TextStyle(
                color: Color(0xff4A4B4D),
                fontSize: height * 0.012,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
