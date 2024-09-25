import 'package:bookia/core/utils/colors.dart';
import 'package:flutter/material.dart';

showErrorDialog(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Appcolors.redcolor,
    content: Text(text),
  ));
}
