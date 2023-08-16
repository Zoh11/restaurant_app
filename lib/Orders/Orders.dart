import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:cafe_coffee_app/Orders/Locatiobp.dart';
import 'package:cafe_coffee_app/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orders extends StatefulWidget {
  static const String routeName = '/Orders';
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  var selected = 0;
  var payt = ['price', 'Delivery Fee', 'total paymen'];
  Widget buildgategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: ["Delivery", "Pick up"]
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
                      margin: EdgeInsets.only(left: 0, bottom: 0.r, right: 0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.r, vertical: 10.r),
                      decoration: BoxDecoration(
                          color: selected == key ? kbottonColor : kwhiteColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        width: 130,
                        height: 20,
                        child: Center(
                          child: Text(
                            value,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: selected == key
                                        ? kwhiteColor
                                        : kTextColor),
                          ),
                        ),
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
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Text(
                'Order',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            buildgategories(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "Dlivery adress",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "JI Kpg Sutoyo",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 80),
              child: Text(
                "JI Kpg Sutoyo No 620 Bilzen Tanjungbai",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                top: 10,
              ),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(width: 0.1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 6, top: 6, bottom: 6, right: 6),
                        child: Row(
                          children: [
                            Image.asset('assets/icons/edit.png'),
                            SizedBox(
                              width: 8,
                            ),
                            Center(
                              child: Text('Edit adress'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        border: Border.all(width: 0.1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 6, top: 6, bottom: 6, right: 6),
                        child: Row(
                          children: [
                            Image.asset('assets/icons/Document.png'),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Edit adress'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Container(
                child: Image.asset('assets/images/Line1.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(coffee.image),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(34)),
                          child: Icon(Icons.remove),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text("1"),
                        SizedBox(
                          width: 9,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(34)),
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Divider(
          thickness: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, top: 40),
          child: Center(
            child: Container(
              width: 330,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffEAEAEA)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset('assets/icons/Discount.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Text("1 Discount is applied"),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 20),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(
                    "payment Summary",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              'price',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 240),
                            child: Text(
                              "\$${coffee.price.toString()}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              child: Text(
                                'Delivery Fee',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 187, top: 10),
                            child: Text(
                              "\$${coffee.price.toString()}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/Line2.png'),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              child: Text(
                                'total price',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200, top: 10),
                            child: Text(
                              "\$${coffee.price.toString()}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('assets/icons/moneys.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: kbottonColor,
                                borderRadius: BorderRadius.circular(34)),
                            child: Text('Cash')),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            "\$${coffee.price.toString()}",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Image.asset('assets/icons/dots.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        Locationpp.routeName, (route) => true,
                        arguments: coffee);
                  },
                  child: Container(
                    width: 300,
                    height: 60,
                    child: Center(
                        child: Text(
                      'order',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 15, color: kwhiteColor),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: kbottonColor),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
