import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krakebic/core/constants/app_assets.dart';
import 'package:krakebic/core/constants/app_strings.dart';
import 'package:krakebic/features/splash/widgets/custom_onboarding_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingScreen(
      imagePath: AppAssets.firstOnboard,
      text: AppStrings.onboarding1Text,
    );
  }
}
