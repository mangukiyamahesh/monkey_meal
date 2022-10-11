import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_textformfield.dart';

class PaymentDetailPage extends StatefulWidget {
  const PaymentDetailPage({Key? key}) : super(key: key);

  @override
  State<PaymentDetailPage> createState() => _PaymentDetailPageState();
}

class _PaymentDetailPageState extends State<PaymentDetailPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.52,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff707070),
                  spreadRadius: height * 0.005,
                  blurRadius: height * 0.1,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
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
                          'Payments Details',
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
                  Text(
                    'Customize your payment method',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.023,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Divider(
                    color: Color(0xff707070),
                    thickness: height * 0.0002,
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Cash/Card on delivery',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: height * 0.02,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.done,
                              color: Color(0xffEE5A30),
                              size: height * 0.035,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Divider(
                          color: Color(0xff707070),
                          thickness: height * 0.0002,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/card.png',
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              '**** ****',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: height * 0.025,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              '2187',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: height * 0.02,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: height * 0.04,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: height * 0.0015,
                                  color: Color(0xffFC6011),
                                ),
                                borderRadius:
                                    BorderRadius.circular(height * 0.02),
                              ),
                              child: Center(
                                child: Text(
                                  'Delete Card',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: height * 0.016,
                                    color: Color(0xffFC6011),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Divider(
                          color: Color(0xff707070),
                          thickness: height * 0.0002,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          'Other Methods',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.02,
                            color: Color(0xff4A4B4D),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 600,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
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
              color: Color(0xffFC6011),
              height: height * 0.075,
              minWidth: width * 0.9,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(height * 0.04),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    size: height * 0.04,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    'Add Another Credit/Debit Card',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.022,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
