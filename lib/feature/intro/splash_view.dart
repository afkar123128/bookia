import 'package:bookia/core/function/navigation.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/feature/intro/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => _splash_viewState();
}

class _splash_viewState extends State<splash_view> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      pushReplacement(context, welcome_view());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/Group 2918 (1).svg"),
            Gap(15),
            Text(
              "Order Your Book Now!",
              style: getBodyLineTextSTyle(context, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
