import 'package:flutter/material.dart';
import 'package:krakebic/core/constants/app_strings.dart';
import 'package:krakebic/features/splash/widgets/custom_onboarding_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingScreen(imagePath: 'assets/images/Frame.png', text: AppStrings.onboarding3Text);
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Image.asset('assets/images/Frame.png'),
       
    //     Text(AppStrings.onboarding3Text),
    //   ],
    // );
  }
}