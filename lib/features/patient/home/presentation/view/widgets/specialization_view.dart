import 'package:flutter/material.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/doctor_rate_card.dart';

class SpecializationView extends StatelessWidget {
  const SpecializationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
            )),
        centerTitle: true,
        title: Text(
          'جراحة عامة',
          style: getTitleStyle(color: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: 2,
          itemBuilder: (context, index) {
            return DoctorRateCard();
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
            );
          },
        ),
      ),
    );
  }
}
