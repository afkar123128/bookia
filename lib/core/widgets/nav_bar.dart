
import 'package:bookia/core/constants/asset_icons.dart';
import 'package:bookia/feature/cart/presentation/pages/profile.dart';
import 'package:bookia/feature/home/presentation/pages/home_screen.dart';
import 'package:bookia/feature/profile/presentation/pages/profile.dart';
import 'package:bookia/feature/wishlist/presentation/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class nav_bar extends StatefulWidget {
  const nav_bar({super.key});

  @override
  State<nav_bar> createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar> {
  @override
  int currentindex=0;
  List<Widget>pages =[
  home() ,
  wishlist(),
  cart(),
  profile()
  ]
  ;
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
       bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
      showSelectedLabels: false,
      showUnselectedLabels: true,
      
                currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: SvgPicture.asset(AssetIcons.Home),
        label: "home",
        activeIcon: SvgPicture.asset(AssetIcons.Home),
        
        ),
         BottomNavigationBarItem(icon: SvgPicture.asset(AssetIcons.Bookmark),
        label: "wishlist"),
                 BottomNavigationBarItem(icon: SvgPicture.asset(AssetIcons.Category),
        label: "cart"),
         BottomNavigationBarItem(icon: SvgPicture.asset(AssetIcons.Profile),
        label: "profile",
        )
       ],
       ) ,
    );
  }
}