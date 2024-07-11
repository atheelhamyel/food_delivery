import 'package:flutter/material.dart';
import 'package:food_delivery/models/category_model.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/viwes/pages/product_detials_page.dart';
import 'package:food_delivery/viwes/widget/cart.dart';
import 'package:food_delivery/viwes/widget/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategoryId;
  late List<ProductModel> filteredProducts;


  @override
  void initState() {
    super.initState();
    filteredProducts = dummyProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey100,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomApp(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/images/home_banner.jpg'),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    itemCount: dummyCategories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final category = dummyCategories[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.5),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (selectedCategoryId==category.id){
                                selectedCategoryId= null ;
                                filteredProducts=dummyProducts ;
                              }
                              else {
                              selectedCategoryId = category.id;
                              filteredProducts = dummyProducts.where((product) => product.category.id == selectedCategoryId).toList();
                              }
                            });
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: selectedCategoryId == category.id
                                  ? Theme.of(context).primaryColor
                                  : AppColors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  category.imgUrl,
                                  height: 70,
                                  width: 70,
                                  color: selectedCategoryId == category.id ? AppColors.white : null,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  category.name,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: AppColors.grey
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 36),
                GridView.builder(
                itemCount: filteredProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 16,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  final product = filteredProducts[index];
                  return InkWell(
                    onTap:() {
                     Navigator.of(context).push(
                      MaterialPageRoute(builder: (_){
                        return  ProductDetailsPage  ( product:product,);
                                
                      }));
                    }, 
                    child: DecoratedBox(
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
                                  Text(product.name, style: Theme.of(context).textTheme.titleSmall,),
                                  const SizedBox(height: 8),
                                  Text(
                                    '\$${product.price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        product.isFavorite = !product.isFavorite;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        product.isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        size: 15,
                                        color:Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
        Positioned(
             right: 20,
             top: 550,

          child: Cart_Widget())
        ] 
      ),
    );
  }
}
