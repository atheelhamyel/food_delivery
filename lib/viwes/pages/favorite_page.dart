import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/viwes/widget/cart.dart';
import 'package:food_delivery/viwes/widget/custom_app_bar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<ProductModel> favoriteProducts = dummyProducts.where((p) => p.isFavorite).toList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: const PreferredSize( 
          preferredSize: Size.fromHeight(80),
          child: CustomApp()),
        body: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/favorite.png', 
                  height:140 ,
                  width: double.infinity,
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  itemCount: favoriteProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 16,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    final product = favoriteProducts[index];
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    product.imgUrl,
                                    height: 70,
                                    width: 70,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(product.name),
                                  const SizedBox(height: 8),
                                  Text(
                                    '\$${product.price}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const Positioned(
                                top: 10,
                                right: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 15,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
             right: 20,
             top: 650,

          child: Cart_Widget())
          ] 
    );
  }
}
