import 'package:bookia/core/constants/asset_icons.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
            SvgPicture.asset(AssetIcons.logo,width: 100,),
            Spacer(),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/notification.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search-normal.svg"))
          ],
        ),
      ),
      body: Column(children: [
        CarouselSlider.builder(
  itemCount: 4,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
  Stack(
    children: [
      Image.asset("assets/images/banner.png",fit: BoxFit.cover,width: double.infinity,),
      Positioned(
        top:14,
        left: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Find out the best books to read\nwhen you don’t even know what\n to read!!!",
            style: TextStyle(color: Appcolors.whitecolor,fontSize: 14),),
            Gap(4),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14,vertical: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),color: Appcolors.whitecolor,),
                  child: Text("Explore",
                  style: getSmallLineTextSTyle(context,fontSize: 10,
                  color: Appcolors.primarycolor),
                  ),
              ),
          ],
        ))
    ],
  )
  ,
  

     options: CarouselOptions(
      height: 150,
      //aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
     autoPlay: true,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      onPageChanged: (itemIndex,reason){},
      scrollDirection: Axis.horizontal,
   )
),
      SmoothPageIndicator(    
   controller: PageController(),  // PageController    
   count:  4,    
   effect:  ExpandingDotsEffect(
    activeDotColor: Appcolors.primarycolor,
    dotColor: Appcolors.bordertcolor,
    dotHeight: 7,
    dotWidth: 7,
    expansionFactor: 7

   ),  // your preferred effect    
   onDotClicked: (index){    
  }
)
      ],),
    );
  }
}