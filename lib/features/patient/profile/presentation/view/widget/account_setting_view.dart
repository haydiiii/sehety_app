import 'package:flutter/material.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/features/patient/profile/presentation/view/widget/account_setting_widget.dart';

class AccountSettingView extends StatelessWidget {
  const AccountSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          color: AppColors.whiteColor,
          onPressed: () {
            pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: Text('إعدادات الحساب',
            style: getTitleStyle(color: AppColors.whiteColor)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            AccountSettingWidget(
                onTap: () {}, titleText: 'الإسم', subtitleText: 'هايدي'),
            AccountSettingWidget(
                onTap: () {}, titleText: 'رقم الهاتف', subtitleText: 'هايدي'),
            AccountSettingWidget(
                onTap: () {}, titleText: 'المدينة', subtitleText: 'هايدي'),
            AccountSettingWidget(
                onTap: () {}, titleText: 'نبذه تعريفيه', subtitleText: 'هايدي'),
            AccountSettingWidget(
                onTap: () {}, titleText: 'العمر', subtitleText: 'هايدي'),
          ],
        ),
      ),
    );
  }
}
