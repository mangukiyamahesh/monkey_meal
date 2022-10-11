import 'package:flutter/material.dart';
import 'package:monkey_meal/view/home_page.dart';
import 'package:monkey_meal/view/menu_page.dart';
import 'package:monkey_meal/view/more_page.dart';
import 'package:monkey_meal/view/offer_page.dart';
import 'package:monkey_meal/view/profile_page.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Map<String, dynamic>> bottomItems = [
    {'icon': Icons.grid_view, 'label': "Menu"},
    {'icon': Icons.local_offer, 'label': "Offers"},
    {'icon': Icons.person_outline_outlined, 'label': "Profile"},
    {'icon': Icons.menu_open, 'label': "More"},
  ];

  List<Widget> screens = [
    MenuPage(),
    OfferPage(),
    ProfilePage(),
    MorePage(),
    HomePage(),
  ];

  int selected = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              selected = 4;
            },
          );
        },
        backgroundColor: selected == 4 ? Colors.orange : Colors.grey,
        elevation: 0,
        child: Icon(
          Icons.home,
          size: 35,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        child: BottomAppBar(
          notchMargin: 13,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomItems.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                    right: index == 1 ? 17 : 0, left: index == 2 ? 17 : 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            selected = index;
                          },
                        );
                      },
                      icon: Icon(
                        bottomItems[index]['icon'],
                        color: selected == index ? Colors.orange : Colors.grey,
                      ),
                    ),
                    Text(bottomItems[index]['label'])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
