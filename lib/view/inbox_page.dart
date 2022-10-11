import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
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
                    'Inbox',
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
                      Row(
                        children: [
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4A4B4D),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          Text(
                            '6th July',
                            style: TextStyle(
                              fontSize: height * 0.01,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C7D7E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        'Lolem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.75),
                        child: Icon(
                          Icons.star_border,
                          color: Color(0xffEE5A30),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            height: height * 0.11,
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
                        Row(
                          children: [
                            Text(
                              'MealMonkey Promotions',
                              style: TextStyle(
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.3,
                            ),
                            Text(
                              '6th July',
                              style: TextStyle(
                                fontSize: height * 0.01,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7C7D7E),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          'Lolem ipsum dolor sit amet, consectetur',
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.75),
                          child: Icon(
                            Icons.star_border,
                            color: Color(0xffEE5A30),
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
            height: height * 0.015,
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
                      Row(
                        children: [
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4A4B4D),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          Text(
                            '6th July',
                            style: TextStyle(
                              fontSize: height * 0.01,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C7D7E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        'Lolem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.75),
                        child: Icon(
                          Icons.star_border,
                          color: Color(0xffEE5A30),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            height: height * 0.11,
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
                        Row(
                          children: [
                            Text(
                              'MealMonkey Promotions',
                              style: TextStyle(
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.3,
                            ),
                            Text(
                              '6th July',
                              style: TextStyle(
                                fontSize: height * 0.01,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7C7D7E),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          'Lolem ipsum dolor sit amet, consectetur',
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB6B7B7),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.75),
                          child: Icon(
                            Icons.star_border,
                            color: Color(0xffEE5A30),
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
            height: height * 0.015,
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
                      Row(
                        children: [
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4A4B4D),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          Text(
                            '6th July',
                            style: TextStyle(
                              fontSize: height * 0.01,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C7D7E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        'Lolem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.75),
                        child: Icon(
                          Icons.star_border,
                          color: Color(0xffEE5A30),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
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
                      Row(
                        children: [
                          Text(
                            'MealMonkey Promotions',
                            style: TextStyle(
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4A4B4D),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          Text(
                            '6th July',
                            style: TextStyle(
                              fontSize: height * 0.01,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C7D7E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        'Lolem ipsum dolor sit amet, consectetur',
                        style: TextStyle(
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB6B7B7),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.75),
                        child: Icon(
                          Icons.star_border,
                          color: Color(0xffEE5A30),
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
