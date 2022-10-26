import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';

class StackProductItem extends StatelessWidget {
  // 1
  final double width;
  final Product item;
  final int number;

  const StackProductItem({
    Key? key,
    required this.width,
    required this.item,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 10),
      // 2
      child: Stack(
        children: [
          ProductItem(product: item),
          Positioned(
            left: 10,
            bottom: 80,
            child: Text(
              "$number",
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 85,
            child: Container(),
            // child: CircleContainer(iconPath: "assets/icons/star.svg"),
          ),
          // 3
          number == 1
              ? Container(
                  height: 190,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  child: const Center(
                    child: Text(
                      "Coming Soon",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
