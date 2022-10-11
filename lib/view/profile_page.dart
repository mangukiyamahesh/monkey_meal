import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_textformfield.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.03,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart,
                    color: Color(0xff4A4B4D),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: height * 0.06,
                  backgroundColor: Colors.red,
                  child: Image.asset('assets/images/Profile picture.png'),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      size: height * 0.025,
                      color: Color(0xffFC6011),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Color(0xffFC6011),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  'Hi there Emilia!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.024,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Color(0xff7C7D7E),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    CommonTextFormField(
                      text: '',
                      labelText: 'Name',
                      obscure: false,
                      keyBoardTYpe: TextInputType.name,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: height * 0.025),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CommonTextFormField(
                      text: '',
                      labelText: 'Email',
                      obscure: false,
                      keyBoardTYpe: TextInputType.emailAddress,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: height * 0.025),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CommonTextFormField(
                      text: '',
                      labelText: 'Mobile No',
                      obscure: false,
                      keyBoardTYpe: TextInputType.number,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: height * 0.025),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CommonTextFormField(
                      text: '',
                      labelText: 'Address',
                      obscure: false,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: height * 0.025),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CommonTextFormField(
                      text: '',
                      labelText: 'Password',
                      obscure: true,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: height * 0.025),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CommonTextFormField(
                      text: '',
                      labelText: 'Confirm Password',
                      obscure: true,
                      validator: (value) {},
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: height * 0.025),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: height * 0.07,
                      minWidth: width * 0.9,
                      color: Color(0xffFC6011),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.05),
                      ),
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.022),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
