import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/view/login-page.dart';
import 'package:monkey_meal/view/signup-page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    print(height);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/Organe top shape.png',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: -height * 0.18,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/Monkey face.png',
                  height: height * 0.406,
                  width: width * 0.375,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.06,
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
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            '    Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
            style: TextStyle(
                height: height * 0.0017,
                color: Color(0xff7C7D7E),
                fontSize: height * 0.016,
                fontWeight: FontWeight.w300),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: CommonButton(
              text: 'Login',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInPage(),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: MaterialButton(
              onPressed: () {
                setState(
                  () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffFC6011)),
                borderRadius: BorderRadius.circular(height * 0.05),
              ),
              height: height * 0.065,
              minWidth: width * 0.8,
              child: Center(
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
