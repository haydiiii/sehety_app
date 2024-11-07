import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/prim_app_bar_widget.dart';
import 'package:sehety_app/features/patient/profile/presentation/view/widget/connect_information.dart';
import 'package:sehety_app/features/patient/profile/presentation/view/widget/setting_view.dart';

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
                onPressed: () {
                  push(context, const SettingView());
                },
                icon: const Icon(
                  Icons.settings,
                  color: AppColors.whiteColor,
                )),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          AssetsImage.splash,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo_camera_rounded,
                              color: AppColors.primaryColor,
                            ),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Column(
                    children: [
                      Text(
                        'RealName',
                        style: getTitleStyle(),
                      ),
                      const Gap(20),
                      Text(
                        'Address',
                        style: getbodyStyle(),
                      )
                    ],
                  )
                ],
              ),
              const Gap(20),
              Text(
                'نبذه تعريفيه',
                style: getTitleStyle(color: AppColors.blackColor),
              ),
              const Gap(20),
              Text(
                'لم تضاف',
                style: getbodyStyle(),
              ),
              const Gap(20),
              const Divider(),
              const Gap(20),
              Text(
                'معلومات التواصل',
                style: getTitleStyle(color: AppColors.blackColor),
              ),
              const ConnectInformationWidget(),
              const Gap(10),
              const Divider(),
              Text(
                'حجوزاتي',
                style: getTitleStyle(color: AppColors.blackColor),
              ),
              const Gap(10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'لا توجد حجوزات',
                  style: getbodyStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
