import 'package:cafe_coffee_app/Orders/Orders.dart';
import 'package:cafe_coffee_app/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:readmore/readmore.dart';

import '../../App_style/app_style.dart';

class DetialPages extends StatefulWidget {
  static const String routeName = '/DetialPages';
  const DetialPages({super.key});

  @override
  State<DetialPages> createState() => _DetialPagesState();
}

class _DetialPagesState extends State<DetialPages> {
  var selected = 1;
  Widget buildgategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          "       S        ",
          "       M        ",
          "       L        ",
        ]
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
                      margin:
                          EdgeInsets.only(left: 20, bottom: 30.r, right: 10),
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

  @override
  Widget build(BuildContext context) {
    final CoffeModel coffee =
        ModalRoute.of(context)!.settings.arguments as CoffeModel;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios)),
              ),
              Text(
                'Detial',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: ' font',
                    fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(Icons.favorite_border_outlined),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              height: 200,
              width: 300,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(coffee.image),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffee.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  coffee.CoffeWith,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Color(0xff9B9B9B)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      coffee.rate.toString(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.black,
                          fontFamily: 'sort',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '(230)',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black, fontFamily: 'sort'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/bean.png'),
                          Image.asset('assets/icons/iconbean.png')
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 30,
            child: Divider(
              thickness: 2,
              height: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  child: Text(
                    'Description',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: ReadMoreText(
                    "A cappuccino is a popular Italian coffee drink made with espresso, steamed milk, and a layer of frothy milk foam on top. It is served in small cups and has become a staple in coffee shops worldwide. The name 'cappuccino' comes from the drink's brown color, similar to the robes worn by Capuchin friars. Enjoyed as a morning or afternoon beverage, it offers a balanced combination of espresso, milk, and foam.",
                    trimLines: 3,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "ReadMore",
                    trimExpandedText: "Readless",
                    lessStyle: TextStyle(
                        color: kbottonColor, fontWeight: FontWeight.bold),
                    moreStyle: TextStyle(
                        color: kbottonColor, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Size',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                buildgategories(),
                Text("price"),
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
                      child: Container(
                        width: 300,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffc67c4e),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              Orders.routeName,
                              (route) => true,
                              arguments: coffee,
                            );
                          },
                          child: Text('Buy Now'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
