import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationandSearch extends StatelessWidget {
  const LocationandSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradienColors,
          begin: Alignment.topLeft,
          stops: const [0, 1],
          transform: const GradientRotation(240.86),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.r),
            title: Text(
              'Location',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kwhiteColor),
            ),
            subtitle: Text(
              "Bilzen Tanjungbalai",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kwhiteColor),
            ),
            trailing: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(profile),
                ),
              ),
            ),
          ),

          // Search portion
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
            child: TextField(
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: "search Coffe",
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14,
                      height: 1,
                      color: const Color(0xff989898),
                    ),
                fillColor: Color(0xff313131),
                filled: true,
                prefixIcon: CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Image.asset(SearchIcon),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(6),
                  child: CupertinoButton(
                    onPressed: () {},
                    // color: kbottonColor,
                    padding: EdgeInsets.zero,
                    child: Image.asset(filterIcon),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
