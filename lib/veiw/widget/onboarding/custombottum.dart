import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class Custombuttomonboarding extends GetView<OnboardingControllerImp> {
  const Custombuttomonboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin:const EdgeInsets.only(bottom: 30),
          height: 40,
          child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical:0 ),
            onPressed: (){
              controller.next();
            },
          color: Appcolor.primaryColor,
           textColor: Colors.white,
           child: const Text("Continue")),
         );
  }
}