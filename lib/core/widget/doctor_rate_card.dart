import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class DoctorRateCard extends StatelessWidget {
  const DoctorRateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AssetsImage.splash),
        ),
        title: Text('RealName', style: getTitleStyle()),
        subtitle: Text('Specialization', style: getbodyStyle()),
        trailing: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Rate'),
            Gap(10),
            Icon(Icons.star, color: Colors.amber),
          ],
        ),
      ),
    );
  }
}
