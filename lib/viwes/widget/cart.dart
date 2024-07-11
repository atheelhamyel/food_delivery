import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/viwes/pages/cart_page.dart';

// ignore: camel_case_types
class Cart_Widget extends StatelessWidget {
 Cart_Widget({super.key});
 final List<ProductModel> ordersProducts = dummyProducts.where((p) => p.orders).toList();
  final int orderTime = 0; 
  final int discount = 0;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.primary
      ),
      child: Positioned(
         top:0,
          right: 15,
                 child: IconButton(onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(
                   builder: (_) {
                   return Cart(
                   
                       );
                         },
                          ),
                           );
                                },
                                 icon: const Icon(Icons.shopping_cart_outlined ,color: AppColors.white,)
                                 ),
                              ),
    );
  }
}