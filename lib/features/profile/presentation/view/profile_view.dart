import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/widget/prim_app_bar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: PrimAppBarWidget(
            titleText: ' الحساب الشخصي',
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: AppColors.whiteColor,
                )),
          )),
    );
  }
}
