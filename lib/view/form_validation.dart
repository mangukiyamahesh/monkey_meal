import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';

import 'onboding_page.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({Key? key}) : super(key: key);

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  TextEditingController email = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "email can not be empty";
                  }
                },
                controller: email,
                obscureText: false,
                //maxLength: 0,
                //keyboardType: keyBoardTYpe,
                textInputAction: TextInputAction.next,
                onTap: () {},
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //prefixIcon: prefixicon,
                  counterText: "",
                  //contentPadding: contentPadding,
                  filled: true,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Color(0xffB6B7B7)),
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "mobile no can not be empty";
                  } else if (value.length != 10) {
                    return "mobile no must be 10 digit";
                  }
                },
                controller: mobileNo,
                obscureText: false,
                maxLength: 10,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                onTap: () {},
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //prefixIcon: prefixicon,
                  counterText: "",
                  //contentPadding: contentPadding,
                  filled: true,
                  hintText: "Mobile No",
                  hintStyle: TextStyle(color: Color(0xffB6B7B7)),
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password can not be empty";
                  } else if (value.length < 6) {
                    return "password must be at least 6 character";
                  }
                },
                controller: password,
                obscureText: false,
                //maxLength: 0,
                //keyboardType: keyBoardTYpe,
                textInputAction: TextInputAction.next,
                onTap: () {},
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //prefixIcon: prefixicon,
                  counterText: "",
                  //contentPadding: contentPadding,
                  filled: true,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xffB6B7B7)),
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "confirm password can not be empty";
                  } else if (value != password.text) {
                    return 'confirm pass must be same as above';
                  }
                },
                controller: confirmPass,
                obscureText: false,
                //maxLength: 0,
                //keyboardType: keyBoardTYpe,
                textInputAction: TextInputAction.next,
                onTap: () {},
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //prefixIcon: prefixicon,
                  counterText: "",
                  //contentPadding: contentPadding,
                  filled: true,
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Color(0xffB6B7B7)),
                  fillColor: Color(0xffF2F2F2),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(height * 0.055),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CommonButton(
                text: "Submit",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnBodingPage(),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
