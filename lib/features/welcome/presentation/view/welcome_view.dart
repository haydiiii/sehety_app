import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/features/auth/presentation/view/login_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            /////
            Image.asset(
              AssetsImage.welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            ///////////////
            Positioned(
                top: 50,
                right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'أهلا بيك ',
                      style: getTitleStyle(fontSize: 40),
                    ),
                    Text(
                      'سجل وإحجز عند دكتورك وإنت في البيت ',
                      style: getbodyStyle(),
                    )
                  ],
                )),
            Positioned(
                bottom: 50,
                left: 25,
                right: 25,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.greyColor.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    children: [
                      Text(
                        'سجل دلوقتي كــ',
                        style: getbodyStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const Gap(50),
                      GestureDetector(
                        onTap: () {
                          pushReplacement(context, const LoginView(index: 0,));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 15),
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.whiteColor.withOpacity(0.5),
                          ),
                          child: Center(
                              child: Text('دكتور',
                                  style: getbodyStyle(
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          pushReplacement(context, const LoginView(index: 1,));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 15),
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.whiteColor.withOpacity(0.5),
                          ),
                          child: Center(
                              child: Text('مريض',
                                  style: getbodyStyle(
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
