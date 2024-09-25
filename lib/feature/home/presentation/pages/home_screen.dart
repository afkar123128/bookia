import 'package:bookia/core/constants/asset_icons.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:bookia/feature/auth/presentation/widgets/banner.dart';
import 'package:bookia/feature/home/presentation/widgets/popularbook.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            SvgPicture.asset(
              AssetIcons.logo,
              width: 100,
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/notification.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/search-normal.svg"))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bannerwidget(),
            Gap(20),
            popularbook()
          ],
        ),
      ),
    );
  }
}



