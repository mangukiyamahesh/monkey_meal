import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/common/common_textformfield.dart';
import 'package:monkey_meal/view/otp_page.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController email = TextEditingController();

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
                    'Reset Password',
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
                  height: height * 0.05,
                ),
                CommonButton(
                  text: 'Send',
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPPage(),
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
