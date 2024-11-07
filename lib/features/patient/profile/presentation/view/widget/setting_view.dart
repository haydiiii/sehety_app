import 'package:flutter/material.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/custom_button.dart';
import 'package:sehety_app/features/patient/profile/presentation/view/widget/account_setting_view.dart';
import 'package:sehety_app/features/patient/profile/presentation/view/widget/setting_option_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

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
        title: Text('الاعدادات',
            style: getTitleStyle(color: AppColors.whiteColor)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // const  Icon(Icons.person, color: AppColors.black,),
            PersonalSettingsWidget(
              onTap: () {
                push(context, const AccountSettingView());
              },
              settingIcon: const Icon(
                Icons.person,
                color: AppColors.blackColor,
              ),
              settingText: "اعدادات الحساب",
            ),
            PersonalSettingsWidget(
              onTap: () {},
              settingIcon: const Icon(
                Icons.security_outlined,
                color: AppColors.blackColor,
              ),
              settingText: "كلمة السر",
            ),
            PersonalSettingsWidget(
              onTap: () {},
              settingIcon: const Icon(
                Icons.notifications_active,
                color: AppColors.blackColor,
              ),
              settingText: "اعدادات الاشعارات",
            ),
            PersonalSettingsWidget(
              onTap: () {},
              settingIcon: const Icon(
                Icons.privacy_tip,
                color: AppColors.blackColor,
              ),
              settingText: "الخصوصية",
            ),
            PersonalSettingsWidget(
              onTap: () {},
              settingIcon: const Icon(
                Icons.question_mark_sharp,
                color: AppColors.blackColor,
              ),
              settingText: "المساعدة و الدعم",
            ),
            PersonalSettingsWidget(
              onTap: () {},
              settingIcon: const Icon(
                Icons.person_add_alt_1,
                color: AppColors.blackColor,
              ),
              settingText: "دعوة صديق",
            ),
            CustomButton(
              width: double.infinity,
              onPressed: () {},
              text: 'تسجيل خروج',
              color: Colors.red,
              textColor: AppColors.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
