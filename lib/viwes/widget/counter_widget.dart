import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';

class CounterWidget extends StatefulWidget {
  final ProductModel product;

  const CounterWidget({super.key, required this.product});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late ProductModel product;
  late int counter;

  Color decreaseIconColor = Colors.grey;
  Color increaseIconColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    product = widget.product;
    counter = product.counter; 
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: counter > 1
                ? () {
                    setState(() {
                      counter--;
                      product.counter = counter;
                      decreaseIconColor = Theme.of(context).primaryColor; 
                      increaseIconColor = Colors.grey; 
                    });
                  }
                : null,
            icon: Icon(Icons.remove_circle_outline, color: decreaseIconColor),
          ),
          const SizedBox(width: 8),
          Text(counter.toString()),
          IconButton(
            onPressed: () {
              setState(() {
                counter++;
                product.counter = counter;
                increaseIconColor = Theme.of(context).primaryColor; 
                decreaseIconColor = Colors.grey; 
              });
            },
            icon: Icon(Icons.add_circle_outline_outlined, color: increaseIconColor),
          ),
        ],
      ),
    );
  }
}
