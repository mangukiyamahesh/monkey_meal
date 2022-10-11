import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/view/new_password_page.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                '    We have to send an OTP to',
                style: TextStyle(
                    fontSize: height * 0.03,
                    color: Color(0XFF4A4B4D),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                'your Mobile',
                style: TextStyle(
                    fontSize: height * 0.03,
                    color: Color(0XFF4A4B4D),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                'Please check your mobile number 071*****12',
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
                'continue to reset ypur password',
                style: TextStyle(
                    height: height * 0.002,
                    fontSize: height * 0.016,
                    color: Color(0xff7C7D7E),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              OTPTextField(
                obscureText: true,
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: width * 0.165,
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                style: const TextStyle(fontSize: 17, color: Color(0xffB6B7B7)),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                // otpFieldStyle: OtpFieldStyle(
                //   //borderColor: Color(0xffB5D0F3),
                //   backgroundColor: Colors.blue.shade50,
                // ),
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                height: height * 0.07,
              ),
              CommonButton(
                text: 'Next',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive?",
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.018),
                  ),
                  SizedBox(
                    width: height * 0.003,
                  ),
                  Text(
                    "Click here",
                    style: TextStyle(
                        color: Color(0xffFC6011),
                        fontWeight: FontWeight.w600,
                        fontSize: height * 0.018),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
