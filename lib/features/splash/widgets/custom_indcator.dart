import 'package:flutter/material.dart';
import 'package:krakebic/core/constants/app_colors.dart';

class CustomIndcator extends StatelessWidget {
  const CustomIndcator({super.key, required this.active});
 final bool active;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 5,
      width: active?25:5,
      margin: EdgeInsets.symmetric(horizontal: 5),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active?AppColors.activeIndcator:AppColors.nonactiveIndcator,

      ),
      
    );
  }
}
