import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class ConnectInformationWidget extends StatelessWidget {
  const ConnectInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.mail,
                      color: AppColors.whiteColor,
                    )),
                const Gap(10),
                Text(
                  'Email@gmail.com',
                  style: getbodyStyle(),
                )
              ],
            ),
            const Gap(20),
            Row(
              children: [
                const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.phone,
                      color: AppColors.whiteColor,
                    )),
                const Gap(10),
                Text(
                  '01005201848',
                  style: getbodyStyle(),
                )
              ],
            )
          ],
        ));
  }
}
