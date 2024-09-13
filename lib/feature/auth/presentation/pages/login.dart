import 'package:bookia/core/function/navigation.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/Back_buttom.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:bookia/core/widgets/nav_bar.dart';
import 'package:bookia/feature/auth/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          children: [
            BackButtomWidgets(),],
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
            decoration: InputDecoration(hintText: "Enter your password",
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 18),
              child: SvgPicture.asset("assets/icons/fluent_eye-20-filled.svg",width: 20,height: 20,),
            ),suffixIconConstraints: BoxConstraints(
              maxWidth: 48,
              maxHeight: 17,
            )),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: (){}, child: Text("Forgot Password?",style: getSmallLineTextSTyle(context),))],
          ),Gap(30),
          CustomButtom(text: "login", onTap: (){
            PushAndRemoveUntil(context, nav_bar());
          }),
          Gap(20),
          Row(children: [Expanded(child: Divider()),
          Gap(10),
          Text("Or Login with",style: getSmallLineTextSTyle(context),),
          Gap(10)
,          Expanded(child: Divider())],),
           socialloginwidgets(),
           Gap(70),
           Padding(
             padding: const EdgeInsets.only(bottom: 10),
             child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Don’t have an account?",style: getBodyLineTextSTyle(context),),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                
                onPressed: (){}, child: Text("Register Now",style: getBodyLineTextSTyle(context,color: Appcolors.primarycolor),)),
                
                
              
              ],),
           )
         
        
          ]
          ),
        ),
      ),
    );
  }
}


