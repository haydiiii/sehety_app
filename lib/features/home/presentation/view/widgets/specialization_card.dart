import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class SpecializationCard extends StatelessWidget {
  const SpecializationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Restrict the height of the ListView.builder
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Stack(
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(5, 5),
                          color: AppColors.greyColor.withOpacity(0.5))
                    ],
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  right: -30,
                  top: -40,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: AppColors.whiteColor.withOpacity(0.2),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsImage.doctorCard,
                        width: 100,
                        height: 100,
                      ),
                      const Gap(10),
                      Text(
                        'جراحة عامة ',
                        style: getTitleStyle(
                            fontSize: 16, color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
