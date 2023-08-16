import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:cafe_coffee_app/Orders/Locatiobp.dart';
import 'package:cafe_coffee_app/Orders/Orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Component/bottom_bar.dart';
import 'Components/pages/detial_container.dart';
import 'Home/home.dart';
import 'onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'cafe Coffe App',
          theme: theme,
          routes: {
            '/': (context) => const onbord(),
            Home.routeName: (context) => const Home(),
            BottomNavigationBarExample.routeName: (coHomentext) =>
                const BottomNavigationBarExample(),
            DetialPages.routeName: (context) => const DetialPages(),
            Orders.routeName: (context) => const Orders(),
            Locationpp.routeName: (context) => Locationpp(),
          },
        );
      },
    );
  }
}
