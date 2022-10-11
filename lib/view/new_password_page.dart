import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/common/common_textformfield.dart';
import 'package:monkey_meal/view/login-page.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Text(
                    'New Password',
                    style: TextStyle(
                        fontSize: height * 0.03,
                        color: Color(0XFF4A4B4D),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  'Please enter your email to receive a',
                  style: TextStyle(
                      height: height * 0.002,
                      fontSize: height * 0.016,
                      color: Color(0xff7C7D7E),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.001,
                ),
                Text(
                  'link to create a new password via email',
                  style: TextStyle(
                      height: height * 0.002,
                      fontSize: height * 0.016,
                      color: Color(0xff7C7D7E),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.07,
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
                  height: height * 0.05,
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
                  text: 'Next',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
