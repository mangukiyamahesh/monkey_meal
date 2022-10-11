import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int counter = 0;
  int select = 0;
  List<String> dropDownItems = ["Small", "Medium", "Large", "Extra Large"];
  List<String> dropDownItemsIngredients = [
    "Pizza dough",
    "Cheese",
    "Chilli flex",
    "Cheese",
    "Toppings"
  ];
  String? dropDownValue;
  String? ingredient;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height * 0.4,
            width: height * 0.5,
            child: Image.asset(
              'assets/images/chicken_pizza.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkResponse(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.7,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(height * 0.06),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.04),
                                child: Text(
                                  'Tandoori Chicken Pizza',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: height * 0.027),
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffEE5A30),
                                            size: height * 0.0275,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffEE5A30),
                                            size: height * 0.0275,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffEE5A30),
                                            size: height * 0.0275,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffEE5A30),
                                            size: height * 0.0275,
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Color(0xffEE5A30),
                                            size: height * 0.0275,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        '4 Star Ratings',
                                        style: TextStyle(
                                            color: Color(0xffEE5A30),
                                            fontSize: height * 0.015,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Rs. 750',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: height * 0.04,
                                          color: Color(0xff4A4B4D),
                                        ),
                                      ),
                                      Text(
                                        '/ per portion',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.015,
                                          color: Color(0xff4A4B4D),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.02,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nOmare leo non mollis id cursus. Eu euismod faucibus in leo\nmalesuada',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.0155,
                                  height: height * 0.002,
                                  color: Color(0xff7C7D7E),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                'Customize your Order',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.021,
                                  color: Color(0xff4A4B4D),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Container(
                                height: 45,
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Colors.grey.shade200),
                                child: Center(
                                  child: DropdownButton(
                                      icon: Padding(
                                        padding: EdgeInsets.only(
                                            left: height * 0.13),
                                        child: Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                      ),
                                      underline: SizedBox(),
                                      hint:
                                          Text("-Select The Size of portion-"),
                                      value: dropDownValue,
                                      items: List.generate(
                                        dropDownItems.length,
                                        (index) => DropdownMenuItem(
                                          value: dropDownItems[index],
                                          child: Text(
                                            dropDownItems[index],
                                          ),
                                        ),
                                      ),
                                      onChanged: (String? value) {
                                        setState(
                                          () {
                                            dropDownValue = value as String;
                                          },
                                        );
                                      }),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Container(
                                height: height * 0.058,
                                width: width * 1,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                ),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.025),
                                    child: Text("-Select the ingredients-"),
                                  ),
                                  icon: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.355),
                                    child: Icon(Icons.keyboard_arrow_down),
                                  ),
                                  value: ingredient,
                                  items: List.generate(
                                    dropDownItemsIngredients.length,
                                    (index) => DropdownMenuItem(
                                      value: dropDownItemsIngredients[index],
                                      child: Text(
                                        dropDownItemsIngredients[index],
                                      ),
                                    ),
                                  ),
                                  onChanged: (String? value) {
                                    setState(
                                      () {
                                        ingredient = value;
                                      },
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
                                    'Number of Portions',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: height * 0.018,
                                      color: Color(0xff4A4B4D),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        height: height * 0.035,
                                        width: height * 0.055,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            height * 0.02,
                                          ),
                                          color: Color(0xffFC6011),
                                        ),
                                        child: InkResponse(
                                          onTap: () {
                                            if (counter > 0) {
                                              setState(
                                                () {
                                                  counter--;
                                                },
                                              );
                                            }
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            size: height * 0.02,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Container(
                                        height: height * 0.035,
                                        width: height * 0.055,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            height * 0.02,
                                          ),
                                          border: Border.all(
                                            color: Color(0xffFC6011),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "$counter",
                                            style: TextStyle(
                                                color: Color(0xffFC6011)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Container(
                                        height: height * 0.035,
                                        width: height * 0.055,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            height * 0.02,
                                          ),
                                          color: Color(0xffFC6011),
                                        ),
                                        child: InkResponse(
                                          onTap: () {
                                            setState(
                                              () {
                                                counter++;
                                              },
                                            );
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: height * 0.02,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: height * 0.2,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(height * 0.06),
                                ),
                                color: Color(0xffFC6011),
                              ),
                            ),
                            Positioned(
                              top: height * 0.025,
                              bottom: height * 0.025,
                              left: width * 0.1,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: height * 0.145,
                                    width: width * 0.75,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(
                                            height * 0.06,
                                          ),
                                          right: Radius.circular(
                                            height * 0.02,
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            spreadRadius: height * 0.001,
                                            blurRadius: height * 0.003,
                                            offset: Offset(
                                              height * 0.001,
                                              height * 0.002,
                                            ),
                                          ),
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Total Price',
                                          style: TextStyle(
                                              color: Color(0xff4A4B4D),
                                              fontSize: height * 0.015,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: height * 0.005,
                                        ),
                                        Text(
                                          'LKR 1500',
                                          style: TextStyle(
                                              color: Color(0xff4A4B4D),
                                              fontSize: height * 0.025,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: height * 0.005,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * 0.12),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      height * 0.05),
                                            ),
                                            color: Color(0xffFC6011),
                                            height: height * 0.05,
                                            minWidth: width * 0.4,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.shopping_cart,
                                                  color: Colors.white,
                                                  size: height * 0.02,
                                                ),
                                                SizedBox(
                                                  width: width * 0.07,
                                                ),
                                                Text(
                                                  'Add to Cart',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    right: -height * 0.035,
                                    child: Container(
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            blurRadius: height * 0.002,
                                            spreadRadius: height * 0.001,
                                            offset: Offset(
                                              height * 0.001,
                                              height * 0.002,
                                            ),
                                          ),
                                        ],
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        size: height * 0.035,
                                        color: Color(0xffFC6011),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -height * 0.045,
                  right: height * 0.01,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/cont.png',
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: -5,
                        right: 0,
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xffFC6011),
                        ),
                      )
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
