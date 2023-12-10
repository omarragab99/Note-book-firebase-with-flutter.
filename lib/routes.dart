import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/veiw/screen/auth/login.dart';
import 'package:ecommerce/veiw/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  AppRoute.login: (context) =>const Login(),
  AppRoute.onBoarding: (context) =>const OnBoarding()

};