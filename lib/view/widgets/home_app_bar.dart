import 'package:flutter/material.dart';

import '../../constants/text styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Brand / Logo Text
          SizedBox(
              height: 60,
              width: 90,
              child: Image.asset('assets/images/alhayaLogo.png',)),

          // Shopping Bag Icon
          IconButton(
            onPressed: () {
              // TODO: Navigate to Cart screen
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: colorScheme.onBackground,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
