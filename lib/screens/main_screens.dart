import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/screens/recommend/recommend_screen.dart';
import 'package:market_kurly/screens/search/search_screen.dart';
import '../models/nav_item.dart';
import 'category/category_screen.dart';
import 'home/home_screen.dart';
import 'my_kurly/my_kurly_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});
  static String routeName = '/main_screens';

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: [
        HomeScreen(),
        RecommendScreen(),
        CategoryScreen(),
        MyKurlyScreen(),
        SearchScreen(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
            icon: navItems[index].icon,
            label: navItems[index].label,
            isActive: navItems[index].id == _selectedIndex ? true : false,
          ),
        ),
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {String? icon,
      String? label,
      bool isActive = false,
      GestureTapCallback? press}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        width: 38,
        height: 38,
        child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(icon ?? "assets/icons/star.svg",
              color: isActive ? kPrimaryColor : Colors.black),
        ),
      ),
      label: label,
    );
  }
}
