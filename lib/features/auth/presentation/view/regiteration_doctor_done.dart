import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/custm_txt_formfield.dart';
import 'package:sehety_app/core/widget/custom_button.dart';
import 'package:sehety_app/features/auth/data/view_model/specialization_model.dart';

class RegiterationDoctorDone extends StatefulWidget {
  const RegiterationDoctorDone({super.key});

  @override
  State<RegiterationDoctorDone> createState() => _RegiterationDoctorDoneState();
}

class _RegiterationDoctorDoneState extends State<RegiterationDoctorDone> {
  String _specialization = specializationList[0];
  TextEditingController bio = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone1 = TextEditingController();
  TextEditingController phone2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'إكمال عملية التسجيل ',
          style: getbodyStyle(
              color: AppColors.whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('التخصص', style: getbodyStyle()),
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.secondaryColor.withOpacity(0.2),
                  ),
                  child: DropdownButton(
                      value: _specialization,
                      iconDisabledColor: AppColors.primaryColor,
                      iconEnabledColor: AppColors.primaryColor,
                      icon: const Icon(
                        Icons.expand_circle_down_rounded,
                      ),
                      isExpanded: true,
                      items: specializationList
                          .map((newValue) => DropdownMenuItem(
                                value: newValue,
                                child: Text(newValue, style: getbodyStyle()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _specialization = value.toString();
                        });
                      }),
                ),
                const Gap(10),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('نبذه تعريفية', style: getbodyStyle()),
                ),
                const Gap(10),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                  textAlign: TextAlign.right,
                  controller: bio,
                  hintText:
                      'سجل المعلومات الطبية العامة مثل تعليمك الأكاديمي وخبراتك السابقة...',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك ادخل النبذة التعريفية';
                    } else {
                      return null;
                    }
                  },
                ),
                const Gap(5),
                const Divider(
                  color: AppColors.greyColor,
                  endIndent: 20,
                  indent: 20,
                ),
                const Gap(5),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('عنوان العيادة', style: getbodyStyle()),
                ),
                const Gap(10),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.right,
                  controller: address,
                  hintText: '5 شارع مصدق - الدقي - الجيزة',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك ادخل عنوان العيادة';
                    } else {
                      return null;
                    }
                  },
                ),
                const Gap(10),
                Row(
                  children: [
                    Expanded(
                        child: Text('ساعات العمل من', style: getbodyStyle())),
                    Expanded(child: Text('الي', style: getbodyStyle())),
                  ],
                ),
                const Gap(10),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.alarm,
                                color: AppColors.primaryColor,
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                      readOnly: true,
                    )),
                    const Gap(20),
                    Expanded(
                        child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.alarm,
                                color: AppColors.primaryColor,
                              )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    )),
                  ],
                ),
                const Gap(10),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('رقم الهاتف 1', style: getbodyStyle()),
                ),
                const Gap(10),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.right,
                  controller: phone1,
                  hintText: '+20xxxxxxxxxx',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك ادخل الرقم';
                    } else {
                      return null;
                    }
                  },
                ),
                const Gap(10),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('رقم الهاتف 2 (اختياري)', style: getbodyStyle()),
                ),
                const Gap(10),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.right,
                  controller: phone2,
                  hintText: '+20xxxxxxxxxx',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'من فضلك ادخل الرقم';
                    } else {
                      return null;
                    }
                  },
                ),
                const Gap(10),
                CustomButton(
                  height: 50,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                  text: 'تسجيل',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
