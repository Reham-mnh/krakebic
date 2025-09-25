import 'package:flutter/material.dart';
import 'package:krakebic/constants.dart';
import 'package:krakebic/core/utils/screen_uitl.dart';
import 'package:krakebic/pages/login_page.dart';
import 'package:krakebic/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUitl(
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xffFFFFFF),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontFamily: 'Otama.ep',
              fontSize: 38,
              fontWeight: FontWeight.w400,
            ),
            titleMedium: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xffFFFFFF)
            ),
            labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Constants.labelMediumColor,
            ),
            bodySmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff6C6C6C),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xff009639)),
              foregroundColor: WidgetStatePropertyAll(Color(0xffFFFFFF)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
      
        home: MovingTextExample(),
      ),
    );
  }
}
