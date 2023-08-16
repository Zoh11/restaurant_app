// import 'package:cafe_coffee_app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locationpp extends StatefulWidget {
  static const String routeName = '/Loactionp';
  const Locationpp({
    super.key,
  });

  @override
  State<Locationpp> createState() => _LocationppState();
}

class _LocationppState extends State<Locationpp> {
  GoogleMapController? mapcontroller;

  final LatLng _center = const LatLng(45.521563, -2.677433);

  void _onMapcreated(GoogleMapController controller) {
    mapcontroller = controller;
  }

  @override
  Widget build(BuildContext context) {
    // final CoffeModel coffee =
    //     ModalRoute.of(context)!.settings.arguments as CoffeModel;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            child: GoogleMap(
              onMapCreated: _onMapcreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              "10 minuts left",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Deliver to ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: "JI.kpgSutoyo",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/Frame1.png"),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.white),
              borderRadius: BorderRadius.circular(34),
            ),
            child: Row(
              children: [
                Center(
                  child: Row(
                    children: [
                      Image.asset('assets/images/Frame3.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text('Delivery your order'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, right: 20),
                              child: Text(
                                'we deliver your goods to you in\n the shortext possible time',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.white),
              borderRadius: BorderRadius.circular(34),
            ),
            child: Row(
              children: [
                Center(
                  child: Row(
                    children: [
                      Image.asset('assets/images/Frame2.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 40, left: 10, top: 10),
                              child: Text('Zohaib Ahmad'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, right: 35),
                              child: Text(
                                'personal courier',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Icon(Icons.phone),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
