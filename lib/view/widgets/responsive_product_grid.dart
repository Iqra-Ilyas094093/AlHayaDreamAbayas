import 'package:flutter/material.dart';
import '../../model/product_ui_model.dart';
import 'product_card.dart';

class ResponsiveProductGrid extends StatelessWidget {
  final List<ProductUIModel> products;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const ResponsiveProductGrid({
    super.key,
    required this.products,
    this.shrinkWrap = true,
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: products.length,
      shrinkWrap: shrinkWrap,
      physics: physics,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220, // adaptive magic
        mainAxisSpacing: 16,
        crossAxisSpacing: 12,
        childAspectRatio: 0.55,
      ),
      itemBuilder: (context, index) {
        return ProductCard(
          product: products[index],
          onAddToCart: () {},
          onFavoriteTap: () {},
        );
      },
    );
  }
}
