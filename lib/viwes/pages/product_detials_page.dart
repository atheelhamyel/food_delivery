import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:food_delivery/viwes/widget/cart.dart';
import 'package:food_delivery/viwes/widget/counter_widget.dart';
import 'package:food_delivery/viwes/widget/property_item.dart';

class ProductDetailsPage extends StatefulWidget {
  final ProductModel product;
  final List<ProductModel> ordersProducts = dummyProducts.where((p) => p.orders).toList();
  final int orderTime = 0; 
  final int discount = 0;   

   ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: AppColors.grey2,
        actions: [
          IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
                      ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 350,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.grey2,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 60.0),
                            child: CachedNetworkImage(
                             imageUrl: widget.product.imgUrl,
                                                        ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 6,
                        width: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.grey2,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.product.name,
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      widget.product.category.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            color: AppColors.grey,
                                          ),
                                    ),
                                  ],
                                ),
                                CounterWidget(product: widget.product),
                              ],
                            ),
                            const SizedBox(height: 36),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PropertyItem(
                                  title: 'Size',
                                  value: 'Medium',
                                ),
                                SizedBox(
                                  height: 24,
                                  child: VerticalDivider(),
                                ),
                                PropertyItem(
                                  title: 'Calories',
                                  value: '150 Kcal',
                                ),
                                SizedBox(
                                  height: 24,
                                  child: VerticalDivider(),
                                ),
                                PropertyItem(
                                  title: 'Cooking',
                                  value: '5-10 mins',
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            Text(
                              widget.product.description,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: AppColors.grey,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '\$${widget.product.price}',
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                           setState(() {
                             widget.product.orders = true;
                           });
                             },
                            style: ElevatedButton.styleFrom(
                           backgroundColor: Theme.of(context).primaryColor,
                           foregroundColor: AppColors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(8),
                           ),
                            ),
                           child: const Text('Add Cart'),
                             ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
             right: 20,
             top: 550,

          child: Cart_Widget())
          ] 
        ),
      ),
    );
  }
}
