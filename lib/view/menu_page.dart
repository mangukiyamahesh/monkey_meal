import 'package:flutter/material.dart';
import 'package:monkey_meal/common/common_textformfield.dart';
import 'package:monkey_meal/view/desserts_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/img1.png', 'name': 'Food', 'stock': '120 items'},
    {
      'image': 'assets/images/img2.png',
      'name': 'Beverages',
      'stock': '220 items'
    },
    {
      'image': 'assets/images/img3.png',
      'name': 'Desserts',
      'stock': '155 items'
    },
    {
      'image': 'assets/images/img4.png',
      'name': 'Promotions',
      'stock': '25 items'
    },
  ];
  TextEditingController search = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Menu',
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
                height: height * 0.03,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: height * 0.65,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Color(0xffFC6011),
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(height * 0.08),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.15, top: height * 0.02),
                            child: Column(
                              children: List.generate(
                                4,
                                (index) => Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            index == 2
                                                ? Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DessertPage(),
                                                    ),
                                                  )
                                                : SizedBox();
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: height * 0.13,
                                        width: width * 0.75,
                                        margin: EdgeInsets.symmetric(
                                            vertical: height * 0.009),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 3,
                                              spreadRadius: 0,
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.horizontal(
                                            left:
                                                Radius.circular(height * 0.05),
                                            right:
                                                Radius.circular(height * 0.02),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * 0.2),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                list[index]['name'],
                                                style: TextStyle(
                                                    color: Color(0xff4A4B4D),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: height * 0.026),
                                              ),
                                              SizedBox(
                                                height: height * 0.01,
                                              ),
                                              Text(
                                                list[index]['stock'],
                                                style: TextStyle(
                                                    color: Color(0xffB6B7B7),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: height * 0.015),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -10,
                                      bottom: -10,
                                      left: width * -0.28,
                                      child: Image.asset(
                                        list[index]['image'],
                                        height: height * 0.8,
                                        width: width * 0.6,
                                      ),
                                    ),
                                    Positioned(
                                      right: width * -0.05,
                                      top: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: height * 0.1,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade400,
                                                blurRadius: 3,
                                                spreadRadius: 0,
                                                offset: Offset(0, 1),
                                              ),
                                            ],
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xffFC6011),
                                          size: height * 0.027,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
