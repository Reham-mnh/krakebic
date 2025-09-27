import 'package:flutter/material.dart';
import 'package:krakebic/core/constants/app_colors.dart';
import 'package:krakebic/core/constants/app_values.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    required this.hintText,
    this.controller,
    this.validator,
    this.isPassword = false,
  });
  final String lable;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _obscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(widget.lable, style: Theme.of(context).textTheme.labelMedium),
        SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          obscureText: widget.isPassword ? _obscure : false,
          obscuringCharacter: '*',
          style: Theme.of(context).textTheme.bodySmall,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppValues.fieldBoarderRadius),
              borderSide: BorderSide(color: AppColors.boarderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppValues.fieldBoarderRadius),
              borderSide: BorderSide(color: AppColors.focusedBorderColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppValues.fieldBoarderRadius),
              borderSide: BorderSide(color: AppColors.errorBorderColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppValues.fieldBoarderRadius),
              borderSide: BorderSide(color: AppColors.errorBorderColor),
            ),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            filled: true,
            fillColor: AppColors.textFieldfillColor,
            suffixIcon:
                widget.isPassword
                    ? IconButton(
                      icon: Icon(
                        _obscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                    )
                    : null,
          ),
        ),
      ],
    );
  }
}
