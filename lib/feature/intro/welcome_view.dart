import 'package:bookia/core/function/navigation.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:bookia/feature/auth/presentation/pages/login.dart';
import 'package:bookia/feature/auth/presentation/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class welcome_view extends StatefulWidget {
  const welcome_view({super.key});

  @override
  State<welcome_view> createState() => _welcome_viewState();
}

class _welcome_viewState extends State<welcome_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/images/alif-caesar-rizqi-pratama-loUlSOXL81c-unsplash 1.png",
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                SvgPicture.asset("assets/images/Group 2918 (1).svg"),
                Gap(20),
                Text(
                  "Order Your Book Now!",
                  style: getBodyLineTextSTyle(context, fontSize: 20),
                ),
                Spacer(
                  flex: 4,
                ),
                CustomButtom(
                    text: "login",
                    onTap: () {
                      push(context, login_view());
                    }),
                Gap(15),
                CustomButtom(
                  text: "Register",
                  onTap: () {
                    push(context, sign_up());
                  },
                  color: Appcolors.whitecolor,
                  textstyle: getBodyLineTextSTyle(context),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
