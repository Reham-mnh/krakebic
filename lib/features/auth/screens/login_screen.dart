import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krakebic/core/constants/app_assets.dart';
import 'package:krakebic/core/constants/app_strings.dart';
import 'package:krakebic/core/constants/app_values.dart';
import 'package:krakebic/core/utils/validators.dart';
import 'package:krakebic/pages/home_screen.dart';
import 'package:krakebic/core/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailControlller = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppValues.padding),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.logo),
                  Text(
                    AppStrings.login,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  CustomTextField(
                    lable: AppStrings.email,
                    hintText: AppStrings.emailHint,
                    controller: emailControlller,
                    validator:(value) => value.validateEmail(),
                  ),
                  SizedBox(height: 16),

                  CustomTextField(
                    lable: AppStrings.password,
                    hintText: AppStrings.passwordHint,
                    isPassword: true,
                    validator: (value) => value.validatePassword(),
                  ),
                  SizedBox(height: 61.h),
                  SizedBox(
                    width: double.infinity,
                    height: 44.h,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      },
                      child: Text(AppStrings.login),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
