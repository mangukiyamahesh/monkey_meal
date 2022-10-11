import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_textformfield.dart';

class ChangeAddressPage extends StatefulWidget {
  const ChangeAddressPage({Key? key}) : super(key: key);

  @override
  State<ChangeAddressPage> createState() => _ChangeAddressPageState();
}

class _ChangeAddressPageState extends State<ChangeAddressPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.02),
              child: Row(
                children: [
                  InkResponse(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: height * 0.028,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    'Change Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.03,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Stack(
            children: [
              Image.asset(
                'assets/images/map.png',
                fit: BoxFit.fill,
                height: height * 0.67,
                width: double.infinity,
              ),
              Positioned(
                left: 170,
                top: 80,
                child: Icon(
                  Icons.location_on,
                  color: Color(0xffEE5A30),
                  size: height * 0.08,
                ),
              ),
              Positioned(
                left: -32,
                top: 10,
                child: Image.asset(
                  'assets/images/Current location address.png',
                  height: height * 0.5,
                  width: width * 0.8,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Icon(
                  Icons.my_location_rounded,
                  size: height * 0.07,
                  color: Color(0xffEE5A30),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              children: [
                CommonTextFormField(
                    text: 'Search Address',
                    obscure: false,
                    prefixicon: Icon(
                      Icons.search,
                      size: height * 0.035,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: height * 0.022)),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: height * 0.027,
                      backgroundColor: Color(0xffE4C7B8),
                      child: Icon(
                        Icons.star,
                        size: height * 0.04,
                        color: Color(0xffFC6011),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Text(
                      'Choose a saved place',
                      style: TextStyle(
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4A4B4D),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: height * 0.035,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
