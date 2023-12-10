import 'package:flutter/material.dart';

class CustomTextformAuth extends StatelessWidget {

  final String hinttext ;
  final String labaltext ;
  final IconData icondata;
  final TextEditingController? mycontroller;
  const CustomTextformAuth({super.key, required this.hinttext, required this.labaltext, required this.icondata, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 40),
      child: TextFormField(
                  controller: mycontroller,
                  decoration: InputDecoration(
                    hintText: hinttext,
                    hintStyle: const TextStyle(fontSize: 14),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    label:Container( 
                      margin:const EdgeInsets.symmetric(horizontal: 9),
                      child:  Text(labaltext)),
                    suffixIcon: Icon(icondata),
    
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(30) ),
    
                  ),
                ),
    );
  }
}