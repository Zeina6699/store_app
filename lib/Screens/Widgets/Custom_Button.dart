import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.text,
    this.onTap,
    this.color=Colors.blue,
    this.textColor=Colors.white
  }) : super(key: key);

VoidCallback? onTap;
String text;
Color? color;
Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color),
          width: double.infinity,
          height: 60,
          child: Center(
          child:Text(text,style: TextStyle(color:textColor,fontSize:18),
          
          )
          ),
      
      ),
    );}}