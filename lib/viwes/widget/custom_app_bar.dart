import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_colors.dart';
class CustomApp extends StatelessWidget {
  const CustomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
       appBar: AppBar(

        actions: [
          IconButton
        (onPressed:(){
        },
         icon:const Icon 
         (Icons.notifications),),
         
         ],
         centerTitle: true,
        title: const Column(
          children: [
            Text(
              'Current Location', 
              style: TextStyle(color: AppColors.grey,
              fontSize: 14 ),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.green,
                ),
                SizedBox(width: 6,),
                Text('Beata, Nablus', style: TextStyle( fontSize: 20),), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}