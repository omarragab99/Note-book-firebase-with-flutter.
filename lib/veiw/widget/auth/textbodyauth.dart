import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  final String text;
  const CustomTextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text
              ,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,);
  }
}