import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    required this.hintText,
    this.controller,
    this.validator,
  });
  final String lable;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          lable,
          style: Theme.of(
            context,
          ).textTheme.labelMedium,
        ),
        SizedBox(height: 8),
        TextFormField(
          
         // style: Theme.of(context).textTheme.displayMedium,
          controller: controller,

          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color(0xffEDEDED))
              ),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            filled: true,
            fillColor: Color(0xffF6F6F6),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
