import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sehety_app/core/utils/colors.dart';

showLoadingDialog(BuildContext context) {
  showDialog(
    barrierColor: AppColors.blackColor.withOpacity(0.4),
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: Lottie.asset('assets/loading.json'),
      );
    },
  );
}
