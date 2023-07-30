import 'package:cafe_coffee_app/App_style/app_style.dart';
import 'package:cafe_coffee_app/Component/My_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onbord extends StatefulWidget {
  const onbord({super.key});

  @override
  State<onbord> createState() => _onbordState();
}

class _onbordState extends State<onbord> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  late Animation<double> _ScaleAniamtion;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _opacityAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
    _ScaleAniamtion =
        Tween<double>(begin: 0.5, end: 1).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kblackColor,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                image3,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: Column(
                    children: [
                      AnimatedOpacity(
                        opacity: _opacityAnimation.value,
                        duration: Duration(milliseconds: 500),
                        child: Text(
                          'Coffee so good, your taste buds will love it',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AnimatedOpacity(
                        opacity: _opacityAnimation.value,
                        duration: Duration(milliseconds: 500),
                        child: Text(
                          'the best grain, the finest roast the\npower full flavour .',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  height: 1.54,
                                  letterSpacing: 0.01,
                                  color: Color(0xffA9A9A9)),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: _opacityAnimation.value,
                          child: Transform.scale(
                            scale: _ScaleAniamtion.value,
                            child: const Mybutton(),
                          )),
                    ],
                  ),
                )),
          ],
        ));
  }
}
