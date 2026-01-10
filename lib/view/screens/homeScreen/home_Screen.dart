import 'package:alhayadreamabayas/constants/data/carousel_slider_data.dart';
import 'package:alhayadreamabayas/constants/data/product_card.dart';
import 'package:alhayadreamabayas/view/widgets/annoucement_bar.dart';
import 'package:alhayadreamabayas/view/widgets/home_app_bar.dart';
import 'package:alhayadreamabayas/view/widgets/home_carousel_slider.dart';
import 'package:alhayadreamabayas/view/widgets/home_search_bar.dart';
import 'package:alhayadreamabayas/view/widgets/responsive_product_grid.dart';
import 'package:alhayadreamabayas/view/widgets/section_header.dart';
import 'package:flutter/material.dart';

import '../../../constants/data/home_category_data.dart';
import '../../widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      // appBar: HomeAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnnouncementBar(text: '✨ Flat 20% OFF on Eid Collection — Limited Time Only, ✨'),
              const SizedBox(height: 12,),
              HomeAppBar(),
              const SizedBox(height: 12,),
              HomeSearchBar(),
              const SizedBox(height: 20,),
              HomeCarousel(items: homeCarouselItems),
              const SizedBox(height: 20,),
              CategoryRow(categories: categoriesRow1),
              const SizedBox(height: 12),
              CategoryRow(categories: categoriesRow2),
              const SizedBox(height: 12,),
              SectionHeader(title: 'Most Popular'),
              const SizedBox(height: 12,),
              ResponsiveProductGrid(products: dummyProducts),
            ],
          ),
        ),
      ),
    );
  }
}
