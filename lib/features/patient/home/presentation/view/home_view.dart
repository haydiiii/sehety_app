import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/doctor_rate_card.dart';
import 'package:sehety_app/features/patient/home/presentation/view/widgets/app_bar.dart';
import 'package:sehety_app/features/patient/home/presentation/view/widgets/search_bar_widget.dart';
import 'package:sehety_app/features/patient/home/presentation/view/widgets/specialization_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: AppBarr()),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'مرحبا  ,',
                    style: getTitleStyle(color: AppColors.blackColor),
                  ),
                  Text(
                    'اسم المستخدم',
                    style: getTitleStyle(),
                  )
                ],
              ),
              const Gap(10),
              Text(
                'احجز الأن وكن جزءاً من رحلتك الصحية .',
                textAlign: TextAlign.start,
                style: getTitleStyle(color: AppColors.blackColor, fontSize: 20),
              ),
              const Gap(10),
              SearchBarWidget(
                  suffixIcon: FloatingActionButton(
                    backgroundColor: AppColors.primaryColor,
                    onPressed: () {},
                    child: const Icon(
                      Icons.search,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  searchController: searchController,
                  text: 'ابحث عن دكتور'),
              const Gap(10),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('التخصصات ', style: getTitleStyle(fontSize: 20))),
              const Gap(10),
              const SpecializationCard(),
              const Gap(10),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('الأعلى تقييماً ',
                      style: getTitleStyle(fontSize: 20))),
              const Gap(10),
              const DoctorRateCard()
            ],
          ),
        ),
      ),
    );
  }
}
