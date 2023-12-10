import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController{
next();
onpagechanged(int index);

}
class OnboardingControllerImp extends OnboardingController{
  int currentpage = 0;
  late PageController pageController ;
  @override
  next() {
    currentpage++;
    if (currentpage==onBoardingList.length-1){
      Get.offAndToNamed(AppRoute.login);

    }else{
    pageController.animateToPage(currentpage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechanged(int index) {
    currentpage =index;
    update();
   
  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }

}
