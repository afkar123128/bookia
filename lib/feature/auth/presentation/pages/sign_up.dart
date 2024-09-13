import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/Back_buttom.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:bookia/feature/auth/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
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
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(children: [Text("Hello! Register to get\n started",style: getHeadLineTextSTyle(context),),
          Gap(12),
           TextFormField(
            decoration: InputDecoration(hintText: "Username"),
          ),
          Gap(15),
          TextFormField(
            decoration: InputDecoration(hintText: " Email"),
          ),
          Gap(15),
           TextFormField(
            decoration: InputDecoration(hintText: " Password",
            )
          ),
             Gap(15),
           TextFormField(
            decoration: InputDecoration(hintText: "Confirm password"),
          ),
       

         Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [],
          ),Gap(10),
          CustomButtom(text: "Register", onTap: (){}),
          Gap(20),
          Row(children: [Expanded(child: Divider()),
          Gap(10),
          Text("Or Register with",style: getSmallLineTextSTyle(context),),
          Gap(10)
,          Expanded(child: Divider())],),
           socialloginwidgets(),
           Gap(20),
           Padding(
             padding: const EdgeInsets.only(bottom: 10),
             child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Already have an account?",style: getBodyLineTextSTyle(context),),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                
                onPressed: (){}, child: Text("Login Now",style: getBodyLineTextSTyle(context,color: Appcolors.primarycolor),)),
                
                
              
              ],),
           )
         
        
          ]
          ),
        ),
      ),
    );
  }
}


