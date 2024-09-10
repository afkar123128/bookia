import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class socialloginwidgets extends StatelessWidget {
  const socialloginwidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child:(   SvgPicture.asset("assets/images/Facebook (Button).svg")) ),
            Gap(8),
            Expanded(child:(   SvgPicture.asset("assets/images/Google (Button).svg")) ),
            Gap(8),
            Expanded(child:(   SvgPicture.asset("assets/images/Apple (Button).svg")) ),
            ],);
  }
}