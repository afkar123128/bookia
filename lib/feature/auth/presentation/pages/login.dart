import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.accentcolor,
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Container(
            width: 41,
            height: 41,
          padding:EdgeInsets.only(left: 7),
        
          decoration: BoxDecoration(color: Appcolors.whitecolor,
          border: Border.all(color: Appcolors.bordertcolor,width: 1),
          borderRadius: BorderRadius.circular(12)
          ),
            child: (   Icon(Icons.arrow_back_ios,size: 22,)),
        ),],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(children: [Text("Welcome back! Glad\n to see you, Again!",style: getHeadLineTextSTyle(context),),
          Gap(32),
          TextFormField(
            decoration: InputDecoration(hintText: "Enter your email"),
          ),
          Gap(15),
           TextFormField(
            decoration: InputDecoration(hintText: "Enter your password"),
          )
          ],),
        ),
      ),
    );
  }
}