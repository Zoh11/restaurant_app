import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:cafe_coffee_app/Components/pages/detial_container.dart';
import 'package:cafe_coffee_app/Data/data.dart';
import 'package:cafe_coffee_app/Home/home.dart';
import 'package:cafe_coffee_app/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class coffeeview extends StatefulWidget {
  const coffeeview({super.key});

  @override
  State<coffeeview> createState() => _coffeeviewState();
}

class _coffeeviewState extends State<coffeeview> {
  var selected = 1;
  Widget buildgategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: ["Cappucinno", "Machiato", " Latte", "Americano"]
            .asMap()
            .map(
              (key, value) => MapEntry(
                  key,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = key;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 30, bottom: 20.r),
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.r, vertical: 10.r),
                      decoration: BoxDecoration(
                          color: selected == key ? kbottonColor : kwhiteColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        value,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: selected == key ? kwhiteColor : kTextColor),
                      ),
                    ),
                  )),
            )
            .values
            .toList(),
      ),
    );
  }

  Widget singleCoffee(CoffeModel coffee) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.topRight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(coffee.image),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 51,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .16),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2.5),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          coffee.rate.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    coffee.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    coffee.CoffeWith,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Color(0xff9B9B9B)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${coffee.price.toString()}",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoButton(
                          child: Image.asset(plusIcon),
                          onPressed: () {},
                          color: kbottonColor,
                          padding: EdgeInsets.zero,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: promoheight / 2 + 20),
      child: Column(
        children: [
          buildgategories(),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: GridView.builder(
              itemCount: coffelist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.4.h,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                CoffeModel coffee = coffelist[index];

                return GestureDetector(
                  onTap: () {
                    // sub main ek coffee ko click krta hoon tho details page pe
                    //  arguments: coffee, jaraha hai thek
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      DetialPages.routeName,
                      (route) => true,
                      arguments: coffee,
                    );
                  },
                  child: singleCoffee(coffee),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
