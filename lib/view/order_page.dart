import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/view/checkout_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
                    'My Order',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.03,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                Container(
                  height: height * 0.13,
                  width: height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.02),
                    image: DecorationImage(
                      image: AssetImage('assets/images/order_image.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'King Burgers',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: height * 0.026,
                        color: Color(0xff4A4B4D),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: height * 0.022,
                          color: Color(0xffFC6011),
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Text(
                          '(124 ratings)',
                          style: TextStyle(
                              color: Color(0xffB6B7B7),
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      children: [
                        Text(
                          'Burger',
                          style: TextStyle(
                              color: Color(0xffB6B7B7),
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          '•',
                          style: TextStyle(
                              color: Color(0xffFC6011),
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Text(
                          'Western Food',
                          style: TextStyle(
                              color: Color(0xffB6B7B7),
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.007,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: height * 0.025,
                          color: Color(0xffFC6011),
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Text(
                          'No 03, 4th Lane, Newyork',
                          style: TextStyle(
                              color: Color(0xffB6B7B7),
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              children: [
                Text(
                  'Beef Burger x1',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.022),
                ),
                Spacer(),
                Text(
                  '\$16',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Divider(
              thickness: height * 0.001,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Text(
                  'Classic Burger x1',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.022),
                ),
                Spacer(),
                Text(
                  '\$14',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Divider(
              thickness: height * 0.001,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Text(
                  'Cheese Chicken Burger x1',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.022),
                ),
                Spacer(),
                Text(
                  '\$17',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Divider(
              thickness: height * 0.001,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Text(
                  'Chicken Legs Basket x1',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.022),
                ),
                Spacer(),
                Text(
                  '\$15',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Divider(
              thickness: height * 0.001,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Text(
                  'French Fries Large x1',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.022),
                ),
                Spacer(),
                Text(
                  '\$6',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Divider(
              thickness: height * 0.001,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  'Delivery instructions',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color: Color(0xffFC6011),
                  size: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Add Note',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '\$68',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Row(
              children: [
                Text(
                  'Delivery Cost',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '\$2',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '\$70',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.03),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CommonButton(
              text: "Checkout",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOutPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
