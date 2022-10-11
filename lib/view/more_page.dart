import 'package:flutter/material.dart';
import 'package:monkey_meal/view/nitification_page.dart';
import 'package:monkey_meal/view/payment_detail.dart';

import 'about_page.dart';
import 'inbox_page.dart';
import 'order_page.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/1.png', 'name': 'Payment Details'},
    {'image': 'assets/images/2.png', 'name': 'My Orders'},
    {'image': 'assets/images/3.png', 'name': 'Notifications'},
    {'image': 'assets/images/4.png', 'name': 'Inbox'},
    {'image': 'assets/images/5.png', 'name': 'About Us'},
  ];

  List list1 = [
    PaymentDetailPage(),
    OrderPage(),
    NotificationPage(),
    InboxPage(),
    AboutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                children: [
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
            SizedBox(
              height: height * 0.04,
            ),
            Column(
              children: List.generate(
                5,
                (index) => Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => list1[index],
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: height * 0.12,
                            width: width * 0.86,
                            margin:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            color: Color(0xffF6F6F6),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: height * 0.035,
                                    backgroundColor: Color(0xffD8D8D8),
                                    child: Image.asset(
                                      list[index]['image'],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.04,
                                  ),
                                  Text(
                                    list[index]['name'],
                                    style: TextStyle(
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff4A4B4D),
                                    ),
                                  ),
                                  Spacer(),
                                  index == 2
                                      ? CircleAvatar(
                                          radius: height * 0.02,
                                          backgroundColor: Color(0xffFF1717),
                                          child: Text(
                                            '15',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      : SizedBox(),
                                  SizedBox(
                                    width: width * 0.04,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: -width * 0.05,
                          child: CircleAvatar(
                            radius: height * 0.025,
                            backgroundColor: Color(0xffF6F6F6),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: height * 0.025,
                              color: Color(0xff7C7D7E),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
