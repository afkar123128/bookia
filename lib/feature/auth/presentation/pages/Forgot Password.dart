import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/Back_buttom.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:bookia/feature/auth/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.accentcolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BackButtomWidgets(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              "Forgot Password?",
              style: getHeadLineTextSTyle(context),
            ),
            Gap(10),
            Text(
              "Don't worry! It occurs. Please enter the email\n address linked with your account.",
              style: getSmallLineTextSTyle(context),
            ),
            Gap(32),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter your email"),
            ),
            Gap(30),
            CustomButtom(text: "Send Code", onTap: () {}),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password?",
                    style: getBodyLineTextSTyle(context),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: getBodyLineTextSTyle(context,
                            color: Appcolors.primarycolor),
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
