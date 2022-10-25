import 'package:flutter/material.dart';
import 'package:market_kurly/screens/signin/signin_screen.dart';
import 'screens/main_screens.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  // String                    WidgetBuilder
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreens.routeName: (context) => const MainScreens(),
  SignInScreen.routeName:(context) => const SignInScreen()
};
