import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import '../widget/onboarding/custombottum.dart';
import '../widget/onboarding/custom dotcontrolleronboarding.dart';
import '../widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: SafeArea(child:Column(children: [const
         Expanded (
          flex: 3,
           child: Customsliderboardering()
         ),

         Expanded(
          flex: 1,
          child: 
         Column( children:const [
         Customcontrollerboarding(),
          Spacer(flex: 2,),
         Custombuttomonboarding()
         ],)
         )
      ],))
    );
  }
}