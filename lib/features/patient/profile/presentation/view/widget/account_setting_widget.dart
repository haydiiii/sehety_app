import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class AccountSettingWidget extends StatelessWidget {
  const AccountSettingWidget({
    super.key,
    required this.onTap, required this.titleText, required this.subtitleText,
  });

  final String titleText;
  final String subtitleText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
      
            // const  Icon(Icons.person, color: AppColors.black,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                titleText,
                style: getbodyStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
             Text(
                subtitleText,
                style: getbodyStyle(),
              ),
          ],
        ),
      ),
    );
  }
}
