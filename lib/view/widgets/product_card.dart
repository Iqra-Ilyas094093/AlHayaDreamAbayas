import 'package:flutter/material.dart';
import '../../model/product_ui_model.dart';

class ProductCard extends StatelessWidget {
  final ProductUIModel product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onAddToCart;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onFavoriteTap,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE + OVERLAYS
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 3 / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // DISCOUNT TAG
              if (product.hasDiscount)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'SALE',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

              // FAVORITE ICON
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  onPressed: onFavoriteTap,
                  icon: Icon(
                    product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // PRODUCT NAME
          Text(
            product.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 4),

          // PRICE ROW
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'PKR ${product.hasDiscount ? product.discountPrice : product.price}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (product.hasDiscount) ...[
                    const SizedBox(width: 6),
                    Text(
                      'PKR ${product.price}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ],
              ),

              const Spacer(),

              // ADD TO CART
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: onAddToCart,
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(color: colorScheme.outline),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
