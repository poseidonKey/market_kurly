import 'package:flutter/material.dart';
import 'package:market_kurly/theme.dart';
import '../../constants.dart';
import '../components/custom_actions.dart';
import 'components/benefit_page.dart';
import 'components/kurly_page.dart';
import 'components/new_product_page.dart';
import 'components/thrity_shopping_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];
    return DefaultTabController(
      length: categories.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Kurly"),
          actions: const [
            CustomActions(),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(42),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3, color: Colors.grey)),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                // 5
                labelColor: kPrimaryColor,
                // 6
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                // 7 마우스 클릭 시 아래 라인 관련
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5, color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage()
          ],
        ),
      ),
    );
  }
}
