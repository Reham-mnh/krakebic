import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krakebic/core/utils/validators.dart';
import 'package:krakebic/pages/home_page.dart';
import 'package:krakebic/widgets/custom_text_field.dart';
// import 'package:krakebic/constants.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailControlller = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),

                  Text('Log In', style: Theme.of(context).textTheme.titleLarge),
                  CustomTextField(
                    lable: 'Email',
                    hintText: 'Enter your email address',
                    controller: emailControlller,
                    validator: AppValidators.emailValidator
                  ),
                  SizedBox(height: 16),

                  CustomTextField(
                    lable: "Password",
                    hintText: 'Enter your password',
                    isPassword: true,
                    validator: AppValidators.passwordValidator
                  
                  ),
                  SizedBox(height: 61),
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      },
                      child: Text('Log in'),
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
