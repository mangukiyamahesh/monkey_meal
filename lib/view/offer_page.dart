import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/dhokla.png',
      'name': 'Cafe de Noires',
      'rate': '4.9',
      'count': '(124 ratings) Cafe',
      'type': 'Western Food'
    },
    {
      'image': 'assets/images/roll.png',
      'name': 'Isso',
      'rate': '4.9',
      'count': '(124 ratings) Cafe',
      'type': 'Western Food'
    },
    {
      'image': 'assets/images/coffee.png',
      'name': 'Cafe Beans',
      'rate': '4.9',
      'count': '(124 ratings) Cafe',
      'type': 'Western Food'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      Text(
                        'Latest Offers',
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
                Text(
                  'Find discount, Offers special',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * 0.016,
                    color: Color(0xff7C7D7E),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                MaterialButton(
                  onPressed: () {},
                  height: height * 0.037,
                  minWidth: width * 0.35,
                  color: Color(0xffFC6011),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(height * 0.02),
                  ),
                  child: Text(
                    'Check Offers',
                    style: TextStyle(
                        color: Colors.white, fontSize: height * 0.015),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: height * 0.21,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              list[index]['image'],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.005),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index]['name'],
                            style: TextStyle(
                                fontSize: height * 0.02,
                                color: Color(0xff4A4B4D),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.0005,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: height * 0.023,
                                color: Color(0xffFC6011),
                              ),
                              SizedBox(
                                width: width * 0.005,
                              ),
                              Text(
                                list[index]['rate'],
                                style: TextStyle(
                                    fontSize: height * 0.016,
                                    color: Color(0xffFC6011),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                list[index]['count'],
                                style: TextStyle(
                                    fontSize: height * 0.016,
                                    color: Color(0xffB6B7B7),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                '•',
                                style: TextStyle(
                                    fontSize: height * 0.01,
                                    color: Color(0xffFC6011),
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                list[index]['type'],
                                style: TextStyle(
                                    fontSize: height * 0.016,
                                    color: Color(0xffB6B7B7),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
