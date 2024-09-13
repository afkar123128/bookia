import 'package:bookia/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class wishlist extends StatefulWidget {
  const wishlist ({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AssetIcons.logo),
      ),
      body: Center(child: Text("wishlist")),
    );
  }
}