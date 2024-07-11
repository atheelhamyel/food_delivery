import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_colors.dart';

class PropertyItem extends StatelessWidget {
  final String value;
    final String title;
  const PropertyItem({super.key ,required this.title,required this.value});
  @override
  Widget build(BuildContext context) {
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ,style: Theme.of(context).textTheme.titleSmall!.copyWith(
          color: AppColors.grey
        ),),
        Text(value ,style: Theme.of(context).textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
        ))
      ],
    );
  }
}