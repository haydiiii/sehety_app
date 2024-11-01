import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      title: Text(
        'صـحتيّ',
        style: getTitleStyle(color: AppColors.blackColor),
      ),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.notifications_active,
            size: 30,
          ),
        )
      ],
    );
  }
}
