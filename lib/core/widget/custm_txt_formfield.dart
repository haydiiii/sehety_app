import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function()? onPressed;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool? enabled;
  final TextAlign textAlign;
  final TextInputAction? textInputAction;
  final int? maxLines;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.onPressed,
    this.enabled,
    this.validator,
    required this.textAlign,
    this.textInputAction,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      textInputAction: textInputAction,
      textAlign: textAlign,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      enabled: enabled,
      onTap: onTap,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        enabled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.greyColor.withOpacity(0.7)),
        prefixIcon: Icon(prefixIcon, color: AppColors.primaryColor),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  suffixIcon,
                  color: AppColors.primaryColor,
                ))
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide.none),
      ),
    );
  }
}
