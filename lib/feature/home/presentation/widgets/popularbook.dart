import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class popularbook extends StatelessWidget {
  const popularbook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("featured book",style: getBodyLineTextSTyle(context),),
          Gap(20),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,mainAxisExtent: 300,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
              ),itemCount: 4,
           itemBuilder: (BuildContext context,int index) {
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Appcolors.secondarycolor
              ),
             child:Column(
              children: 
              [Expanded(child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/image book.jpg",
                fit:BoxFit.cover,
                width: double.infinity,),
              )
              ),
              Gap(5),
              Text("Book ",
              style: getBodyLineTextSTyle(context),),
              Gap(15),
              Row(
                children: [
                  Text("₹285",style: getBodyLineTextSTyle(context),),
                  Spacer(),
                  CustomButtom(
                    height: 30,
                    width: 75,
                    radius: 4,
                    color: Colors.black,
                    textstyle: getSmallLineTextSTyle(context,color: Appcolors.whitecolor),
                    text: "Buy", onTap: (){})
                ],
              )
              ],) ,
            );
             
           }
           ),
        ],
      ),
    );
  }
}