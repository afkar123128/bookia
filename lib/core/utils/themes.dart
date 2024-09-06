
import 'package:bookia/core/utils/colors.dart';

import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData lightTheme=ThemeData(
     fontFamily: "DMSerifDisplay",
    scaffoldBackgroundColor:Appcolors.whitecolor,
     appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
fontWeight: FontWeight.w500,
color: Appcolors.textcolor,
      ),
     ),
     colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primarycolor,onSurface: Appcolors.textcolor),
     inputDecorationTheme: InputDecorationTheme(
    
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Appcolors.primarycolor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Appcolors.primarycolor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Appcolors.redcolor),
      ),
       focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Appcolors.redcolor),
     ))
  ) ;
} 