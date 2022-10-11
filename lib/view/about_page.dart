import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                      size: height * 0.028,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    'About Us',
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
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.05,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                          height: height * 0.002,
                          //overflow: TextOverflow.ellipsis,
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.05,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                          height: height * 0.002,
                          //overflow: TextOverflow.ellipsis,
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '•',
                  style: TextStyle(
                    fontSize: height * 0.05,
                    color: Color(0xffEE5A30),
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ",
                        style: TextStyle(
                          height: height * 0.002,
                          //overflow: TextOverflow.ellipsis,
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
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
