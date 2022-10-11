import 'package:flutter/material.dart';
import 'package:monkey_meal/view/detail_page.dart';

import '../common/common_textformfield.dart';

class DessertPage extends StatefulWidget {
  const DessertPage({Key? key}) : super(key: key);

  @override
  State<DessertPage> createState() => _DessertPageState();
}

class _DessertPageState extends State<DessertPage> {
  TextEditingController search = TextEditingController();

  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/apple_pie.png',
      'name': 'French Apple Pie',
      'rate': '4.9',
      'time': 'Minute by tuk tuk',
      'type': 'Desserts'
    },
    {
      'image': 'assets/images/chocolate_cake.png',
      'name': 'Dark Chocolate Cake',
      'rate': '4.7',
      'time': 'Cakes by Tella',
      'type': 'Desserts'
    },
    {
      'image': 'assets/images/street_shake.png',
      'name': 'Streeet Shake',
      'rate': '4.9',
      'time': 'Cafe Racer',
      'type': 'Desserts'
    },
    {
      'image': 'assets/images/brovenies.png',
      'name': 'Fudgy Chewy Brownies',
      'rate': '4.9',
      'time': 'Minute by tuk tuk',
      'type': 'Desserts'
    },
  ];
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
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'Desserts',
                    style: TextStyle(
                        color: Color(0xff4A4B4D),
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.03),
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
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: CommonTextFormField(
              text: 'Search food',
              obscure: false,
              validator: (value) {},
              controller: search,
              prefixicon: Icon(
                Icons.search,
                color: Color(0xffFC6011),
              ),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: width * 0.03, vertical: height * 0.022),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.81,
            child: ListView.builder(
              itemCount: 4,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),),);
                },
                  child: Container(
                    height: height * 0.25,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: height * 0.01),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          list[index]['image'],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index]['name'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: height * 0.025,
                                color: Color(0xffFC6011),
                              ),
                              SizedBox(
                                width: width * 0.006,
                              ),
                              Text(
                                list[index]['rate'],
                                style: TextStyle(
                                    color: Color(0xffFC6011),
                                    fontSize: height * 0.016,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                list[index]['time'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.016,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "•",
                                style: TextStyle(
                                    color: Color(0xffFC6011),
                                    fontSize: height * 0.01,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                list[index]['type'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.016,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
