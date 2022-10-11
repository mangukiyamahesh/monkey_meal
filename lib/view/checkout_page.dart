import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/view/bottom_nav_screen.dart';

import '../common/common_textformfield.dart';
import 'change_address_page.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  List<Map<String, dynamic>> list = [
    {'image': '', 'text': 'Cash on delivery'},
    {'image': 'assets/images/visa.png', 'text': '**** **** **** 2187'},
    {'image': 'assets/images/paypal.png', 'text': 'johndoe@email.com'},
  ];

  int select = 0;
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
                    'Checkout',
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
            Text(
              'Delivery Address',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: height * 0.02,
                color: Color(0xff7C7D7E),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      '653 Nostrand Ave.,',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height * 0.025,
                        color: Color(0xff4A4B4D),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      'Brooklyn, NY 11216',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height * 0.025,
                        color: Color(0xff4A4B4D),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeAddressPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Change',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.02,
                      color: Color(0xffFC6011),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              children: [
                Text(
                  'Payment method',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * 0.02,
                    color: Color(0xff7C7D7E),
                  ),
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
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(height * 0.03),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: height * 0.8,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(height * 0.03),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                                Text(
                                  'Add Credit/Debit Card',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: height * 0.02,
                                    color: Color(0xff4A4B4D),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                CommonTextFormField(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: width * 0.08,
                                        vertical: height * 0.025),
                                    text: "Card Number",
                                    obscure: false),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Expiry',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.02,
                                        color: Color(0xff4A4B4D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.2,
                                    ),
                                    Expanded(
                                      child: CommonTextFormField(
                                        text: "MM",
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: width * 0.07),
                                        obscure: false,
                                        keyBoardTYpe: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    Expanded(
                                      child: CommonTextFormField(
                                        text: "YY",
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: width * 0.09),
                                        obscure: false,
                                        keyBoardTYpe: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.05,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CommonTextFormField(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: width * 0.08,
                                        vertical: height * 0.025),
                                    text: "Security Code",
                                    obscure: true),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CommonTextFormField(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: width * 0.08,
                                        vertical: height * 0.025),
                                    text: "First Name",
                                    obscure: true),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CommonTextFormField(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: width * 0.08,
                                        vertical: height * 0.025),
                                    text: "Last Name",
                                    obscure: true),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'You can remove this card',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: height * 0.018,
                                        color: Color(0xff7C7D7E),
                                      ),
                                    ),
                                    Spacer(),
                                    SwitchWidget()
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  height: height * 0.067,
                                  minWidth: double.infinity,
                                  color: Color(0xffFC6011),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(height * 0.05),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.1,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: height * 0.04,
                                      ),
                                      SizedBox(
                                        width: width * 0.14,
                                      ),
                                      Text(
                                        'Add Card',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.02,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Add Card',
                    style: TextStyle(
                        color: Color(0xffFC6011),
                        fontWeight: FontWeight.w600,
                        fontSize: height * 0.022),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.37,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: height * 0.08,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: height * 0.015),
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(height * 0.01),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Row(
                        children: [
                          if (list[index]['image'] != "")
                            Image.asset(
                              list[index]['image'],
                            ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            list[index]['text'],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.02,
                              color: Color(0xff2D2D2D),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  select = index;
                                },
                              );
                            },
                            child: Container(
                              height: height * 0.025,
                              width: height * 0.025,
                              decoration: BoxDecoration(
                                color: select == index
                                    ? Color(0xffEE5A30)
                                    : Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: height * 0.0016,
                                  color: select == index
                                      ? Colors.transparent
                                      : Color(0xffEE5A30),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '\$68',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.022,
            ),
            Row(
              children: [
                Text(
                  'Delivery Cost',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '\$2',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.022,
            ),
            Row(
              children: [
                Text(
                  'Discount',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '-\$4',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.045,
            ),
            Row(
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.02),
                ),
                Spacer(),
                Text(
                  '\$66',
                  style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.022),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.025,
            ),
            CommonButton(
              text: "Send Order",
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(height * 0.02),
                    ),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * 0.8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(height * 0.02),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Flexible(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close),
                                ),
                              ),
                              Image.asset(
                                'assets/images/thanks.png',
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Text(
                                'Thank You!',
                                style: TextStyle(
                                  fontSize: height * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Text(
                                'for your order',
                                style: TextStyle(
                                  fontSize: height * 0.023,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Your Order is now being processed. We will let you ',
                                style: TextStyle(
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.007,
                              ),
                              Text(
                                'know once the order is picked from the outlet. Check',
                                style: TextStyle(
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              CommonButton(
                                  text: "Track My Order", onTap: () {}),
                              SizedBox(
                                height: height * 0.025,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BottomNavScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Back To Home',
                                  style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4A4B4D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: select,
      onChanged: (bool value) {
        setState(
          () {
            select = value;
          },
        );
      },
    );
  }
}
