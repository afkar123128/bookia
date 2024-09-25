import 'package:flutter/material.dart';

TextStyle getHeadLineTextSTyle(context,
    {double fontSize = 32, fontWeight = FontWeight.normal, Color? color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getTitleLineTextSTyle(context,
    {double fontSize = 24, fontWeight = FontWeight.bold, Color? color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getBodyLineTextSTyle(context,
    {double fontSize = 16, fontWeight = FontWeight.normal, Color? color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getSmallLineTextSTyle(context,
    {double fontSize = 14, fontWeight = FontWeight.normal, Color? color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}
