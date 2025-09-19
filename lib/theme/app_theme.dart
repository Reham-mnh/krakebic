import 'package:flutter/material.dart';

ThemeData getAppTheme(){
  return ThemeData(
    textTheme: TextTheme(
      titleLarge:TextStyle(
        fontFamily: 'Otama.ep',
        fontSize:38 ,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}