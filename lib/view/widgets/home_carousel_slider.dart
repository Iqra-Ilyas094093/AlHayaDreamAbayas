import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  final List<CarouselItem> items;

  const HomeCarousel({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 400),
        autoPlayCurve: Curves.easeOut,
        enlargeCenterPage: false,
        viewportFraction: 1.0,
        enableInfiniteScroll: true,
      ),
      items: items.map((item) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              item.imagePath,
              fit: BoxFit.cover,
            ),

            // overlay
            Container(
              color: Colors.black.withOpacity(0.25),
            ),

            // text
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.subtitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

// MODEL
class CarouselItem {
  final String imagePath;
  final String title;
  final String subtitle;

  CarouselItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
}
