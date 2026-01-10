class ProductUIModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double? discountPrice;
  final bool isFavorite;

  const ProductUIModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.discountPrice,
    this.isFavorite = false,
  });

  bool get hasDiscount => discountPrice != null;
}
