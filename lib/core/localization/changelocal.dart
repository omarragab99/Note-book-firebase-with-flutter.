import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController{
  Locale ? language ;
  Myservices myservices = Get.find();

  changelang(langcode){
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  
  }
  @override
  void onInit() {
    String ? sharedPrefLang = myservices.sharedPreferences.getString("lang");
    if (sharedPrefLang=="ar"){
      language = const Locale("ar");
    }else if (sharedPrefLang=="en"){
      language = const Locale("en");
    }else{
      language =  Locale(Get.deviceLocale !.languageCode);
    }

    super.onInit();
  }
  
}