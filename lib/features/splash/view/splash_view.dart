import 'package:flutter/material.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/features/onboarding/presentation/view/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      pushReplacement(context, const OnBoardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsImage.splash,
              // width: 200,
              // height: 200,
            )
          ],
        ),
      ),
    );
  }
}
