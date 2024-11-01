import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/custom_button.dart';
import 'package:sehety_app/features/onboarding/data/view_model/on_boarding_model.dart';
import 'package:sehety_app/features/welcome/presentation/view/welcome_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int lastIndx = 0;

  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        actions: [
          if (lastIndx != 2)
            TextButton(
              onPressed: () {
                pushReplacement(context, const WelcomeView());
              },
              child: Text(
                'تخطي',
                style: getTitleStyle(fontSize: 16),
              ),
            )
        ],
      ),
      body: Center(
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              lastIndx = value;
            });
          },
          itemCount: onBoardingList.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  onBoardingList[index].image,
                  width: 350,
                  height: 350,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  onBoardingList[index].title,
                  style: getTitleStyle(fontSize: 20),
                ),
                const Gap(20),
                Text(
                  textAlign: TextAlign.center,
                  onBoardingList[index].subtitle,
                  style: getbodyStyle(),
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: 370,
                  height: 80,
                  child: Row(
                    children: [
                      SmoothPageIndicator(
                          controller: pageController,
                          count: onBoardingList.length,
                          effect: const WormEffect(
                            activeDotColor: AppColors.primaryColor,
                            dotColor: AppColors.greyColor,
                            dotHeight: 15,
                            dotWidth: 20,
                            spacing: 5,
                          )),
                      const Spacer(),
                      if (lastIndx == 2)
                        CustomButton(
                          height: 45,
                          onPressed: () {
                            pushReplacement(context, const WelcomeView());
                          },
                          text: 'هيا بنا ',
                          textColor: AppColors.whiteColor,
                          color: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
