import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/viwes/pages/coupon_page.dart';
import 'package:food_delivery/viwes/pages/orders_page.dart';
import 'package:food_delivery/viwes/widget/cart.dart';
import 'package:food_delivery/viwes/widget/custom_app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<ProductModel> ordersProducts = dummyProducts.where((p) => p.orders).toList();
  final int orderTime = 0; 
  final int discount = 0;   
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CustomApp(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/girl.png'),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Atheel Hamayel',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 80),
                CupertinoListTile(
                  leading: const Icon(Icons.shopping_cart_outlined),
                  title: const Text('Orders'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return  Orders(
                            
                          );
                        },
                      ),
                    );
                  },
                  backgroundColor: AppColors.white,
                ),
                CupertinoListTile(
                  leading: const Icon(Icons.card_giftcard),
                  title: const Text('Copones'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return  const CouponApp();
                        },
                      ),
                    );
                  },
                  trailing: const Icon(Icons.arrow_forward_ios),
                  backgroundColor: AppColors.white,
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
