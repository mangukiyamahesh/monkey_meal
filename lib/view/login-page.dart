import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/common/common_textformfield.dart';
import 'package:monkey_meal/view/bottom_nav_screen.dart';
import 'package:monkey_meal/view/reset_password_page.dart';
import 'package:monkey_meal/view/signup-page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: height * 0.032,
                          color: Color(0xff4A4B4D),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Center(
                    child: Text(
                      'Add your details to login',
                      style: TextStyle(
                          fontSize: height * 0.016,
                          color: Color(0xff7C7D7E),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CommonTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can not empty";
                      }
                    },
                    text: "Your Email",
                    obscure: false,
                    keyBoardTYpe: TextInputType.emailAddress,
                    controller: email,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  CommonTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password can not be empty";
                      } else if (value.length < 6) {
                        return "password atleast 6 character long";
                      }
                    },
                    text: 'Password',
                    obscure: true,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CommonButton(
                    text: 'Login',
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkResponse(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                          color: Color(0xff7C7D7E),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.018),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    'or Login With',
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.018),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: height * 0.075,
                    minWidth: double.infinity,
                    color: Color(0xff367FC0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.05),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/facebook-letter-logo.png',
                          ),
                        ),
                        SizedBox(
                          width: height * 0.04,
                        ),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.02),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: height * 0.075,
                    minWidth: double.infinity,
                    color: Color(0xffDD4B39),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.05),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/google-plus-logo.png',
                          ),
                        ),
                        SizedBox(
                          width: height * 0.04,
                        ),
                        Text(
                          'Login with Google',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.02),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(
                            color: Color(0xff7C7D7E),
                            fontWeight: FontWeight.w400,
                            fontSize: height * 0.018),
                      ),
                      SizedBox(
                        width: height * 0.003,
                      ),
                      InkResponse(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontWeight: FontWeight.w600,
                              fontSize: height * 0.018),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
