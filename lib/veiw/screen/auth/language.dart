// ignore_for_file: deprecated_member_use
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/language/custombuttomlang.dart';

class Language extends GetView<LocalController> {

  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(15),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style: Theme.of(context).textTheme.headline1,),
            const SizedBox(height: 20 ,),
            CustomButtonLang(textbuttom: "Ar",onPressed: () {controller.changelang("ar"); Get.toNamed(AppRoute.onBoarding);},),
            CustomButtonLang(textbuttom: "En",onPressed: () {controller.changelang("en");Get.toNamed(AppRoute.onBoarding);},)
          

        ],),
      ),
    );
  }
}