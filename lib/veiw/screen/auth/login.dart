// ignore_for_file: deprecated_member_use

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/veiw/widget/auth/buttonauth.dart';
import 'package:ecommerce/veiw/widget/auth/textbodyauth.dart';
import 'package:ecommerce/veiw/widget/auth/textformfield.dart';
import 'package:ecommerce/veiw/widget/auth/texttittleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Sign In",style: Theme.of(context).textTheme .headline1!.copyWith(color: Appcolor.grey))),
        body:Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
          child: ListView(
            children: [
             const SizedBox(height: 20,),
             const CustomTextTitle(texttitle:"Welcome Back" ,),
             const SizedBox(height: 10,),
             Container(
            margin:const EdgeInsets.symmetric(horizontal: 25),
              child:const CustomTextBody(text:"Sign In With Your Email And Password Or Conect With Social Media " ,)),
               const SizedBox(height: 65,),
              const CustomTextformAuth(
                hinttext: "Enter your email",
                labaltext: "Email",
                icondata: Icons.email_outlined,
                 mycontroller: null,

               ),
                const CustomTextformAuth(
                hinttext: "Enter your password",
                labaltext: "password",
                icondata: Icons.lock_outline,
                 mycontroller: null,

               ),
              
               Text("Forget password",textAlign:TextAlign.end,),
                SizedBox(height: 40,),
                CustomButtomAuth(text: "LOGIN",onPressed: (){},)
                ,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have account "),
                  SizedBox(width: 3,),
                  InkWell(child: Text("click here ",style: TextStyle(color: Appcolor.primaryColor),),)
                ],)
               
               
              
            ],
            
          ),
        ),
        

    );
  }
}