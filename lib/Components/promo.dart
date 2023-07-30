import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:cafe_coffee_app/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class promo extends StatelessWidget {
  const promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      margin: EdgeInsets.symmetric(horizontal: 20.r),
      height: promoheight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        image: DecorationImage(
          image: AssetImage(image1),
        ),
      ),
    );
  }
}
