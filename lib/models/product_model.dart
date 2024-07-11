import 'package:food_delivery/models/category_model.dart';

class ProductModel{
  final String id ;
  final String imgUrl ;
  final String name ;
  final String description ;
  final double price ;
  final CategoryModel category ;
  bool isFavorite; 
  bool orders ;
   int counter;
   int timeorder ;
   double discount;

  ProductModel({required this.id,
   required this.imgUrl, 
   required this.name, 
    this.description = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    required this.price,
     required this.category,
      this.isFavorite = false,
      this.orders=false,
      this.counter=1,
      this.timeorder=0,
      this.discount=0,
      });

}
List<ProductModel> dummyProducts = [
  ProductModel(
      id: '1',
      category: dummyCategories[0],
      name: 'Beef Burger',
      imgUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/022/911/694/small/cute-cartoon-burger-icon-free-png.png',
      price: 6.99,
      timeorder: 25,
      discount: 5,
      ),
  ProductModel(
      id: '2',
      category: dummyCategories[0],
      name: 'Chicken Burger',
      imgUrl: 'https://assets.stickpng.com/images/58824b33e81acb96424ffab9.png',
      price: 5.99,
      timeorder: 30,
      discount: 5,),
  ProductModel(
      id: '3',
      category: dummyCategories[0],
      name: 'Cheese Burger',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/11/Cheeseburger.png',
      price: 7.99,
      timeorder: 20,
      discount: 5.4,),
 
  ProductModel(
      id: '5',
      category: dummyCategories[2],
      name: 'Margreta Pizza',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/e/ee/Eq_it-na_pizza-margherita_sep2005_sml-2.png',
      price: 8.99,
      timeorder: 25,
      discount: 6.6),
  
  ProductModel(
      id: '7',
      category: dummyCategories[1],
      name: 'Koshary',
      imgUrl:
          'https://static.wixstatic.com/media/7f9493_a6e4ce2c09dc4b1e8f878029fc18fd13~mv2.png/v1/fill/w_440,h_438,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/7f9493_a6e4ce2c09dc4b1e8f878029fc18fd13~mv2.png',
      price: 6.99,
      timeorder: 10,
      discount: 8.4),
  ProductModel(
      id: '8',
      category: dummyCategories[3],
      name: 'Fried Chicken',
      imgUrl:
          'https://www.freepnglogos.com/uploads/fried-chicken-png/crispy-fried-chicken-png-0.png',
      price: 7.99,
      timeorder: 15,
      discount: 7.2),
  ProductModel(
      id: '9',
      category: dummyCategories[3],
      name: 'Grilled Chicken',
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/021/665/568/original/delicious-grilled-chicken-cutout-png.png',
      price: 9.99,
      timeorder: 20,
      discount: 5.7),
       ProductModel(
      id: '10',
      category: dummyCategories[1],
      name: 'Chicken Taco',
      imgUrl:
          'https://hips.hearstapps.com/hmg-prod/images/chicken-tacos-lead-659443cbe4a7a.jpg?crop=1xw:1xh;center,top&resize=980:*',
      price: 10.99,
      timeorder: 17,
      discount: 10.8),
      ProductModel(
      id: '11',
      category: dummyCategories[1],
      name: 'Beef Taco',
      imgUrl:
          'https://joyfoodsunshine.com/wp-content/uploads/2022/04/mexian-ground-beef-tacos-recipe-9.jpg',
      price: 12.59,
      timeorder: 25,
      discount: 8.3),
      ProductModel(
      id: '12',
      category: dummyCategories[4],
      name: 'Starbucks Pink Drink',
      imgUrl:
          'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_750,h_563/k%2Frecipes%2F2023%2F2023-08-starbucks-pink-drink%2Fstarbucks-pink-drink-9',
      price: 5.69,
      timeorder: 7,
      discount: 8.3),
       ProductModel(
      id: '13',
      category: dummyCategories[4],
      name: 'Yellow Bird Drink',
      imgUrl:
          'https://www.shakedrinkrepeat.com/wp-content/uploads/2022/03/Yellow-Bird-Drink-HERO-768x1152.jpg',
      price: 7.55,
      timeorder: 10,
      discount: 6.2),
      ProductModel(
      id: '14',
      category: dummyCategories[4],
      name: 'Ice Coffe',
      imgUrl:
          'https://www.simplejoy.com/wp-content/uploads/2012/06/iced_coffee_cocktail-768x1152.webp',
      price: 10.99,
      timeorder: 5,
      discount: 9.5), 
];
