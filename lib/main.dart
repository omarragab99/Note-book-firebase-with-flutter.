import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/core/localization/transilation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/veiw/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'veiw/screen/auth/language.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await instialService();
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   LocalController controller =     Get.put(LocalController());
    return GetMaterialApp(
      translations: Mytransilation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        textTheme:const TextTheme(
          // ignore: deprecated_member_use
          headline1:  TextStyle(
              fontWeight: FontWeight.bold,fontSize: 22
            ),
             headline2:  TextStyle(
              fontWeight: FontWeight.bold,fontSize: 26
            ),
          // ignore: deprecated_member_use
          bodyText1:  TextStyle(height: 2,color: Appcolor.grey,fontWeight: FontWeight.bold)
              , 
        ),

        primarySwatch: Colors.blue,
      ),
      home:const Language(),
      routes:routes ,
    );
  }
}

