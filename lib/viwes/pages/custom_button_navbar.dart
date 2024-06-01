import 'package:flutter/material.dart';
import 'package:food_delivery/viwes/pages/favorite_page.dart';
import 'package:food_delivery/viwes/pages/home_page.dart';
import 'package:food_delivery/viwes/pages/profile_page.dart';

class CustomBottonNavBar extends StatefulWidget {
  const CustomBottonNavBar({super.key});

  @override
  State<CustomBottonNavBar> createState() => _CustomBottonNavBarState();
}

class _CustomBottonNavBarState extends State<CustomBottonNavBar> {
  int selectedindex=0;
  List<Widget>bodywiget=[
    const HomePage(),
    const FavoritePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodywiget[selectedindex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (index){
          setState(() {
            selectedindex=index ;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

      ],) ,
    );
  }
}