import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_colors.dart';

class AppTheme {
 static ThemeData lightTheme()=>ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary,
       primary: AppColors.primary,
       background: AppColors.grey100),
       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
       ),
       appBarTheme: AppBarTheme(backgroundColor:AppColors.grey100 ),
       drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.grey100
       ),
       useMaterial3: true
      );
}