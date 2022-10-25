import 'package:flutter/material.dart';
import 'package:market_kurly/screens/components/custom_actions.dart';
import 'package:market_kurly/screens/my_kurly/components/my_kurly_body.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text('my Kurly'),
        automaticallyImplyLeading: false,
        actions: const [CustomActions()],
      ),
      body: const SingleChildScrollView(
        child: MyKurlyBody(),
      ),
    );
  }
}
