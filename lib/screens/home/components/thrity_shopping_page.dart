import 'package:flutter/material.dart';
import 'circle_container.dart';
import 'product_filter_button.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';

class ThriftyShoppingPage extends StatelessWidget {
  const ThriftyShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // 1
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/images/kurly_banner_1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 100,
                  child: ProductFilterButton(), // dropdown 버튼 상품순서 선택
                ),
              )
            ],
          ),
        ),
        // 2
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              // 4
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // 5
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    const Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                          iconPath: 'assets/icons/shopping-cart.svg'),
                    )
                  ],
                );
              },
              // 6
              childCount: productList.length,
            ),
          ),
        )
      ],
    );
  }
}
