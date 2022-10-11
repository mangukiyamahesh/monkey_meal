import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_button.dart';
import 'package:monkey_meal/view/home_page.dart';

class OnBodingPage extends StatefulWidget {
  const OnBodingPage({Key? key}) : super(key: key);

  @override
  State<OnBodingPage> createState() => _OnBodingPageState();
}

class _OnBodingPageState extends State<OnBodingPage> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.8,
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    setState(
                      () {
                        select = value;
                      },
                    );
                  },
                  children: [
                    Column(
                      children: [
                        Container(
                          height: height * 0.8,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/Find food you love vector.png',
                                  height: height * 0.6,
                                  width: width * 0.6,
                                ),
                              ),
                              Text(
                                'Find Food You Love',
                                style: TextStyle(
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                'Discover the best foods from over 1,000',
                                style: TextStyle(
                                  fontSize: height * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'restaurants and fast delivery to your doorstep',
                                style: TextStyle(
                                  fontSize: height * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: height * 0.8,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/Delivery vector.png',
                                  height: height * 0.6,
                                  width: width * 0.6,
                                ),
                              ),
                              Text(
                                'Fast Delivery',
                                style: TextStyle(
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                'Fast food delivery to your home,office',
                                style: TextStyle(
                                  fontSize: height * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'wherever you are',
                                style: TextStyle(
                                  fontSize: height * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: height * 0.8,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/Live tracking vector.png',
                                  height: height * 0.6,
                                  width: width * 0.6,
                                ),
                              ),
                              Text(
                                'Live Tracking',
                                style: TextStyle(
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                'Real time tracking of your food on the app',
                                style: TextStyle(
                                  fontSize: height * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'once you placed the order',
                                style: TextStyle(
                                  fontSize: height * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: height * 0.28,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.005),
                        child: CircleAvatar(
                          radius: height * 0.005,
                          backgroundColor: select == index
                              ? Color(0xffFC6011)
                              : Color(0xffD6D6D6),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: CommonButton(
              text: 'Next',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
