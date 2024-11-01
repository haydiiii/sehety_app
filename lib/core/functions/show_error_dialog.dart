import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';

showErrorDialog({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), backgroundColor: AppColors.secondaryColor),
  );
}
