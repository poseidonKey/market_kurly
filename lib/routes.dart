import 'package:flutter/material.dart';
import 'package:market_kurly/screens/details/details_screen.dart';
import 'package:market_kurly/screens/search/search_screen.dart';
import 'package:market_kurly/screens/signin/signin_screen.dart';
import 'screens/main_screens.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  // String                    WidgetBuilder
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreens.routeName: (context) => const MainScreens(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  SearchScreen.routeName: (context) => SearchScreen()
};
