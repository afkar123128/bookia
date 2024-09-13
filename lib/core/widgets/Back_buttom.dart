
import 'package:bookia/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BackButtomWidgets extends StatelessWidget {
  const BackButtomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 41,
        height: 41,
      padding:EdgeInsets.only(left: 7),
              
      decoration: BoxDecoration(color: Appcolors.whitecolor,
      border: Border.all(color: Appcolors.bordertcolor,width: 1),
      borderRadius: BorderRadius.circular(12)
      ),
        child: (   Icon(Icons.arrow_back_ios,size: 22,)),
              ),
    );
  }
}