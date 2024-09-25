import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';

import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.radius = 8,
    this.color = Appcolors.primarycolor,
    required this.onTap,
    this.textstyle,
    this.height = 50,
  });
  final String text;
  final double width;
  final double height;
  final double radius;
  final Color color;
  final Function() onTap;
  final TextStyle? textstyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius))),
          onPressed: onTap,
          child: Text(text,
              style: textstyle ??
                  getBodyLineTextSTyle(context, color: Appcolors.whitecolor))),
    );
  }
}
