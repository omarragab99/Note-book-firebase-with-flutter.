import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class Customcontrollerboarding extends StatelessWidget {
  const Customcontrollerboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(builder: (controller)=>Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ... List.generate(onBoardingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 900),

          width: controller.currentpage==index?20:5,
          height: 6,
          decoration: BoxDecoration(
            color: Appcolor.primaryColor,
            borderRadius: BorderRadius.circular(10)
          ),
          ))
          ],
         ));
  }
}