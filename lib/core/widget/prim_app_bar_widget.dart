import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class PrimAppBarWidget extends StatelessWidget {
  final String titleText;
  final Function()? onPressed;
  final IconButton? icon;
  const PrimAppBarWidget({
    super.key,
    required this.titleText,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        if (icon != null) IconButton(onPressed: onPressed, icon: icon!),
      ],
      centerTitle: true,
      title: Text(
        titleText,
        style: getTitleStyle(color: AppColors.whiteColor),
      ),
    );
  }
}
