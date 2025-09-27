import 'package:flutter/material.dart';
import 'package:krakebic/core/constants/app_strings.dart';
import 'package:krakebic/features/splash/widgets/custom_onboarding_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingScreen(imagePath: 'assets/images/illustation (1).png', text: AppStrings.onboarding2Text);
    // return Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Image.asset('assets/images/illustation (1).png'),
         
    //       Padding(
    //         padding: const EdgeInsets.all(16.0),
    //         child: Text(AppStrings.onboarding2Text,
    //          textAlign: TextAlign.center,),
    //       ),
    //     ],
    
    // );
  }
}