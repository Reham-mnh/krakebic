import 'package:flutter/material.dart';
import 'package:krakebic/core/constants/app_assets.dart';
import 'package:krakebic/core/constants/app_strings.dart';
import 'package:krakebic/features/splash/widgets/custom_onboarding_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingScreen(
      imagePath: AppAssets.thirdOnboard,
      text: AppStrings.onboarding3Text,
    );
  }
}
