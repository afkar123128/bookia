
import 'package:bookia/core/utils/colors.dart';

import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData lightTheme=ThemeData(
     fontFamily: "DMSerifDisplay",
    scaffoldBackgroundColor:Appcolors.whitecolor,
     appBarTheme: AppBarTheme(
      backgroundColor: Appcolors.whitecolor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
fontWeight: FontWeight.w500,
color: Appcolors.textcolor,
      ),
      
     ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Appcolors.whitecolor,
      
    ),
     dividerColor: Appcolors.bordertcolor,
     colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primarycolor,onSurface: Appcolors.textcolor),
     inputDecorationTheme: InputDecorationTheme(
    fillColor: Appcolors.accentcolor,
    filled: true,
    hintStyle: TextStyle(color: Appcolors.graytcolor,fontSize: 15),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Appcolors.bordertcolor),
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