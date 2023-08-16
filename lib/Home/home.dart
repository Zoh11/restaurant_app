import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Components/CoffeeView.dart';
import '../Components/location_and_Search.dart';
import '../Components/promo.dart';

double containerheight = 220.h;
double promoheight = 120.h;

class Home extends StatelessWidget {
  static const String routeName = '/Home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            height: containerheight,
            left: 0,
            right: 0,
            child: LocationandSearch(),
          ),
          Positioned.fill(
              top: containerheight,
              child: InkWell(onTap: () {}, child: coffeeview())),
          Positioned(
            top: containerheight - promoheight / 2,
            left: 0,
            right: 0,
            child: promo(),
          )
        ],
      ),
    );
  }
}
