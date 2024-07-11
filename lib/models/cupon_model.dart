
class Coupon {
  final String title;
  final String description;
  final String expiryDate;
  final String category;
  final String imageUrl;

  Coupon({
    required this.title,
    required this.description,
    required this.expiryDate,
    required this.category,
    required this.imageUrl,
  });
}


final List<Coupon> coupons = [
    Coupon(
      title: '1 Free Cocktail',
      description: 'Expired soon',
      expiryDate: 'June 28, 2020',
      category: 'Drinks',
      imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/campari-spritz-secondary-66477515dc997.jpg?crop=0.668xw:1.00xh;0.0646xw,0&resize=980:*',
    ),
    Coupon(
      title: '20% OFF on burger',
      description: 'When order 2 or more burger',
      expiryDate: 'July 07, 2020',
      category: 'burger',
      imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/banh-mi-turkey-burger-secondary-6578982fea00a.jpg?crop=1.00xw:0.502xh;0,0.199xh&resize=1200:*',
    ),
    Coupon(
      title: 'Save \$3.00',
      description: 'When total purchase is over \$30',
      expiryDate: 'September 15, 2020',
      category: 'Desserts',
      imageUrl: 'https://images.aws.nestle.recipes/resized/30872d9f6bf0bee23cfb508c299de65d_original_milk_chocolate_chip_cookies_(original)_1080_850.jpg',
    ),
    Coupon(
      title: 'Buy 1 get 1 free',
      description: 'Free drink on next purchase',
      expiryDate: '',
      category: 'Drinks',
      imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/del069924-hugospritz-web-3764-bjg-vertical-667afce8bf0ca.jpg?crop=0.8334723380594941xw:1xh;center,top&resize=980:*',
    ),
  ];