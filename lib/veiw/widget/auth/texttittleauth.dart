import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  final String texttitle ;
  const CustomTextTitle({super.key, required this.texttitle});

  @override
  Widget build(BuildContext context) {
    return  Text(texttitle,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,);
  }
}