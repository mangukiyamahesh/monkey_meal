import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
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
                    'Notification',
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
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.06,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your orders has been picked up',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        'Now',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.08,
            width: double.infinity,
            color: Color(0xffF6F6F6),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: height * 0.06,
                      color: Color(0xffEE5A30),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your orders has been delivered',
                          style: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          '1 h ago',
                          style: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.06,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        '3 h ago',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.06,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        '5 h ago',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.08,
            width: double.infinity,
            color: Color(0xffF6F6F6),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: height * 0.06,
                      color: Color(0xffEE5A30),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur',
                          style: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          '05 sep 2020',
                          style: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: height * 0.1,
            width: double.infinity,
            color: Color(0xffF6F6F6),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: height * 0.06,
                      color: Color(0xffEE5A30),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur',
                          style: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          '12 aug 2020',
                          style: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.06,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        '20 jul 2020',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.06,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        '12 jul 2020',
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
