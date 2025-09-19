import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.lable,
    required this.hintText,
    this.validator,
    this.controller,
  });
  final String lable;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

bool _isObscure = true;

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable,
          style: Theme.of(
            context,
          ).textTheme.labelMedium,
        ),
        SizedBox(height: 8),
        TextFormField(
          
          controller: widget.controller,
          textAlignVertical: TextAlignVertical.center,
          obscuringCharacter: '*',
          
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color(0xffEDEDED)),
            ),
            hintText:widget.hintText,
             hintStyle: Theme.of(context).textTheme.bodySmall,
            filled: true,
            fillColor: Color(0xffF6F6F6),
            suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
          obscureText: _isObscure,
          validator: widget.validator,
        ),
      ],
    );
  }
}
