import 'package:bookia/core/utils/colors.dart';
import 'package:flutter/material.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.whitecolor,
        leading: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 24),
          decoration: BoxDecoration(color: Appcolors.whitecolor,
          border: Border.all(color: Appcolors.accentcolor,width: 1),
          borderRadius: BorderRadius.circular(12)
          ),
            child: Center(  child: Icon(Icons.arrow_back)),
        ),
      ),
    );
  }
}