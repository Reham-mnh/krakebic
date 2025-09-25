import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUitl extends StatelessWidget {
   final Widget child;

  const ScreenUitl({super.key, required this.child});
   

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
       minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => child,
    );
  }
}