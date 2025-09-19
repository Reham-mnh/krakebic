import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krakebic/widgets/custom_text_field.dart';
import 'package:krakebic/widgets/password_field.dart';
// import 'package:krakebic/constants.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailControlller = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),

                Text('Log In', style: Theme.of(context).textTheme.titleLarge),
                CustomTextField(
                  lable: 'Email',
                  hintText: 'Enter your email address',
                  controller: emailControlller,
                ),
                SizedBox(height: 16),
                PasswordField(
                  lable: "Password",
                  hintText: 'Enter your emai password',
                ),
                SizedBox(height: 61),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Log in'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
