import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/common/common_textformfield.dart';
import 'package:monkey_meal/view/login-page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
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
                      'Sign Up',
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
                      'Add your details to sign up',
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
                    keyBoardTYpe: TextInputType.name,
                    text: "Name",
                    obscure: false,
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "name can not be empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CommonTextFormField(
                    text: 'Email',
                    obscure: false,
                    controller: email,
                    keyBoardTYpe: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "email can not be empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CommonTextFormField(
                    keyBoardTYpe: TextInputType.number,
                    maxLength: 10,
                    text: "Mobile no",
                    obscure: false,
                    controller: mobileno,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile number can not be empty";
                      } else if (value.length < 10) {
                        return "mobile number atleast 10 digit";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CommonTextFormField(
                    keyBoardTYpe: TextInputType.streetAddress,
                    text: "Address",
                    obscure: false,
                    controller: address,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "address can not be empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CommonTextFormField(
                    text: "Password",
                    obscure: true,
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can not be empty";
                      } else if (value.length < 6) {
                        return "Password must be 6 character";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CommonTextFormField(
                    text: "Confirm Password",
                    obscure: true,
                    controller: confirmpass,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "name can not be empty";
                      } else if (value != password.text) {
                        return "confirm password must be same as is above";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CommonButton(
                    text: "Sign Up",
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInPage(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
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
                              builder: (context) => LogInPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
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
