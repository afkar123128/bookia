import 'package:bookia/core/function/navigation.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/core/widgets/Back_buttom.dart';
import 'package:bookia/core/widgets/custom_buttom.dart';
import 'package:bookia/core/widgets/nav_bar.dart';
import 'package:bookia/feature/auth/data/models/request/login_model.dart';
import 'package:bookia/feature/auth/data/repo/auth_repo.dart';
import 'package:bookia/feature/auth/presentation/bloc/auth_block.dart';
import 'package:bookia/feature/auth/presentation/bloc/auth_event.dart';
import 'package:bookia/feature/auth/presentation/bloc/auth_state.dart';
import 'package:bookia/feature/auth/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class login_view extends StatefulWidget {

  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  var formkey=GlobalKey<FormState>();
  var emailcontroller=TextEditingController();
    var passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<authblock, authstate>(
        listener: (context, state) {
          if(state is LoginSuccessSTATE){
            pushReplacement(context, nav_bar());
          }else if( state is LoginErrorSTATE){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(state.error)));
          }
        },
        builder: (context, state) {

  return  Scaffold(
      backgroundColor: Appcolors.accentcolor,
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BackButtomWidgets(),],
        ),
      ),
      body: 
           Column(
             children: [
              Expanded(
                 child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SingleChildScrollView(
                      child: SingleChildScrollView(
                        child: Form(
                          key:formkey,
                          child: Column(children: [Text("Welcome back! Glad\n to see you, Again!",style: getHeadLineTextSTyle(context),),
                          Gap(32),
                          TextFormField(
                            controller: emailcontroller,
                            decoration: InputDecoration(hintText: "Enter your email"),
                              validator: (value) {
                              if(value==null||value.isEmpty){
                                return "please enter your email";
                              }return null;
                            },
                          ),
                          Gap(15),
                           TextFormField(
                            controller: passwordcontroller,
                            decoration: InputDecoration(hintText: "Enter your password",
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 18),
                              child: SvgPicture.asset("assets/icons/fluent_eye-20-filled.svg",width: 20,height: 20,),
                            ),suffixIconConstraints: BoxConstraints(
                              maxWidth: 48,
                              maxHeight: 17,
                            )
                            ),
                            validator: (value) {
                              if(value==null||value.isEmpty){
                                return "please enter your password";
                              }return null;
                            },
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [TextButton(
                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                              onPressed: (){}, child: Text("Forgot Password?",style: getSmallLineTextSTyle(context),))],
                          ),Gap(30),
                          (state is LoginlodingState)?CircularProgressIndicator():
                          CustomButtom(text: "login", onTap: (){
                            if(formkey.currentState!.validate()){
                              context.read<authblock>().add(loginevent(loginmodelparams(
                                email: emailcontroller.text,
                                password: passwordcontroller.text
                              )));
                           }
                          }),
                          Gap(20),
                          Row(children: [Expanded(child: Divider()),
                          Gap(10),
                          Text("Or Login with",style: getSmallLineTextSTyle(context),),
                          Gap(10)
                          ,          Expanded(child: Divider())],),
                           socialloginwidgets(),
                           Gap(70),
                                            
                                   
                                  
                          ]
                          ),
                        ),
                      ),
                    ),
                    ),
               ),     Padding(
                     padding: const EdgeInsets.only(bottom: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Don’t have an account?",style: getBodyLineTextSTyle(context),),
                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        
                        onPressed: (){}, child: Text("Register Now",style: getBodyLineTextSTyle(context,color: Appcolors.primarycolor),)),
                        
                        
                      
                      ],),
                   )
             ],
           )
            );
        },
      
    );
  }
}


