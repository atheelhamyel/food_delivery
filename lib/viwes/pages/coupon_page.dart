import 'package:flutter/material.dart';
import 'package:food_delivery/models/cupon_model.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/viwes/widget/custom_app_bar.dart';

void main() => runApp(const CouponApp());

class CouponApp extends StatelessWidget {
  const CouponApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CouponHomePage(),
    );
  }
}

class CouponHomePage extends StatelessWidget {
  final List<Coupon> couponsapp = coupons;

  CouponHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomApp(),
      ),
      backgroundColor: Colors.white, // Set Scaffold background color to white
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: coupons.length,
        itemBuilder: (context, index) {
          final coupon = coupons[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.red, width: 2), 
              ),
              elevation: 5,
              color: AppColors.primary,
              child: ListTile(
                contentPadding: const EdgeInsets.all(15.0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(coupon.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                ),
                title: Text(
                  coupon.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coupon.description,
                      style: const TextStyle(color: Colors.white), 
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Expires on: ${coupon.expiryDate}',
                      style: const TextStyle(color: Colors.white), 
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white), 
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        backgroundColor: Colors.white, 
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(coupon.imageUrl),
                            const SizedBox(height: 10),
                            Text(
                              coupon.title,
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(coupon.description),
                            const SizedBox(height: 10),
                            Text('Expiry Date: ${coupon.expiryDate}'),
                            const SizedBox(height: 20),
                            const QrCodeWidget(),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class QrCodeWidget extends StatelessWidget {
  const QrCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey,
      child: const Center(child: Text('QR Code')),
    );
  }
}
