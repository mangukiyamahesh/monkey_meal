import 'package:flutter/material.dart';

import '../common/common_textformfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/offers.png', 'name': 'Offers'},
    {'image': 'assets/images/srilankan.png', 'name': 'Sri Lankan'},
    {'image': 'assets/images/italian.png', 'name': 'Italian'},
    {'image': 'assets/images/indian.png', 'name': 'Indian'},
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'image': 'assets/images/pizza.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.9',
      'count': '(124 ratings) Cafe',
      'type': 'Western Food'
    },
    {
      'image': 'assets/images/heather-ford.png',
      'name': 'Cafe de Noir',
      'rate': '4.9',
      'count': '(124 ratings) Cafe',
      'type': 'Western Food'
    },
    {
      'image': 'assets/images/tella.png',
      'name': 'Bakes by Tella',
      'rate': '4.9',
      'count': '(124 ratings) Cafe',
      'type': 'Western Food'
    },
  ];
  List<Map<String, dynamic>> list3 = [
    {
      'image': 'assets/images/pizza2.png',
      'name': 'Cafe De Bambaa',
      'rate': '4.9',
      'text': 'Cafe',
      'type': 'Western Food'
    },
    {
      'image': 'assets/images/burger_bella.png',
      'name': 'Burger by Bella',
      'rate': '4.9',
      'text': 'Cafe',
      'type': 'Western Food'
    },
  ];
  List<Map<String, dynamic>> list4 = [
    {
      'image': 'assets/images/mulberry pizza.png',
      'name': 'Mulberry Pizza by Josh',
      'text': 'Cafe',
      'type': 'Western Food',
      'rate': '4.9',
      'count': '(124 ratings)'
    },
    {
      'image': 'assets/images/barita.png',
      'name': 'Barita',
      'text': 'Cafe',
      'type': 'Western Food',
      'rate': '4.9',
      'count': '(124 ratings)'
    },
    {
      'image': 'assets/images/pizza rush.png',
      'name': 'Pizza Rush Hour',
      'text': 'Cafe',
      'type': 'Western Food',
      'rate': '4.9',
      'count': '(124 ratings)'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Good morning Akila!',
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.03),
                    ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  'Delivering to',
                  style: TextStyle(
                    fontSize: height * 0.017,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffB6B7B7),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  children: [
                    Text(
                      'Current Location',
                      style: TextStyle(
                        fontSize: height * 0.022,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7C7D7E),
                      ),
                    ),
                    SizedBox(
                      width: height * 0.03,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xffFC6011),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: CommonTextFormField(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: width * 0.1, vertical: height * 0.024),
                  text: 'Search food',
                  obscure: false,
                  prefixicon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                height: height * 0.17,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: height * 0.13,
                          width: height * 0.13,
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(height * 0.01),
                            image: DecorationImage(
                                image: AssetImage(
                                  list[index]['image'],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          list[index]['name'],
                          style: TextStyle(
                              color: Color(0xff4A4B4D),
                              fontWeight: FontWeight.w600,
                              fontSize: height * 0.022),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Restaurents',
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.03),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.025),
                        child: Container(
                          height: height * 0.27,
                          width: double.infinity,
                          color: Colors.red,
                          child: Image.asset(
                            list2[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list2[index]['name'],
                                  style: TextStyle(
                                    fontSize: height * 0.024,
                                    fontWeight: FontWeight.bold,
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
                                      size: height * 0.025,
                                      color: Color(0xffFC6011),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Text(
                                      list2[index]['rate'],
                                      style: TextStyle(
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFC6011),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      list2[index]['count'],
                                      style: TextStyle(
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB6B7B7),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      '•',
                                      style: TextStyle(
                                        fontSize: height * 0.015,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFC6011),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      list2[index]['type'],
                                      style: TextStyle(
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB6B7B7),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Popular',
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.03),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.27,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.2,
                            width: height * 0.3,
                            margin:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.circular(height * 0.01),
                              image: DecorationImage(
                                  image: AssetImage(
                                    list3[index]['image'],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list3[index]['name'],
                                  style: TextStyle(
                                    fontSize: height * 0.024,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4A4B4D),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      list3[index]['text'],
                                      style: TextStyle(
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB6B7B7),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      '•',
                                      style: TextStyle(
                                        fontSize: height * 0.015,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFC6011),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      list3[index]['type'],
                                      style: TextStyle(
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB6B7B7),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.1,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: height * 0.02,
                                      color: Color(0xffFC6011),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      list3[index]['rate'],
                                      style: TextStyle(
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFC6011),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Items',
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.03),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 0.04, vertical: height * 0.015),
                        height: height * 0.12,
                        width: height * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(height * 0.02),
                          image: DecorationImage(
                              image: AssetImage(
                                list4[index]['image'],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.01, top: height * 0.015),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list4[index]['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: height * 0.02,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.004,
                            ),
                            Row(
                              children: [
                                Text(
                                  list4[index]['text'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.018,
                                    color: Color(0xffB6B7B7),
                                  ),
                                ),
                                SizedBox(
                                  width: height * 0.004,
                                ),
                                Text(
                                  '•',
                                  style: TextStyle(
                                    fontSize: height * 0.015,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFC6011),
                                  ),
                                ),
                                SizedBox(
                                  width: height * 0.004,
                                ),
                                Text(
                                  list4[index]['type'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.018,
                                    color: Color(0xffB6B7B7),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.004,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: height * 0.02,
                                  color: Color(0xffFC6011),
                                ),
                                SizedBox(
                                  width: height * 0.004,
                                ),
                                Text(
                                  list4[index]['rate'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.018,
                                    color: Color(0xffFC6011),
                                  ),
                                ),
                                SizedBox(
                                  width: height * 0.004,
                                ),
                                Text(
                                  list4[index]['count'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.018,
                                    color: Color(0xffB6B7B7),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
