import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MarketKurly());
}

class MarketKurly extends StatelessWidget {
  const MarketKurly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Market Kurly UI",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
