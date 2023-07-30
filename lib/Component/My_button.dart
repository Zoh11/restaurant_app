import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        height: 62,
        // width: 300,
        decoration: BoxDecoration(
          color: kbottonColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                height: 1, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
      onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
          BottomNavigationBarExample.routeName, (route) => false),
    );
  }
}
