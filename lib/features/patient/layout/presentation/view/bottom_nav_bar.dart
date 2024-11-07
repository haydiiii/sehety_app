import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/features/appointment/presentation/view/appointment_vie.dart';
import 'package:sehety_app/features/patient/home/presentation/view/home_view.dart';
import 'package:sehety_app/features/patient/profile/presentation/view/profile_view.dart';
import 'package:sehety_app/features/patient/search/presentation/view/search_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List<Widget> pages = const [
    HomeView(),
    SearchView(),
    AppointmentView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(0.1),
            )
          ],
          color: AppColors.whiteColor,
        ),
        child: GNav(
            onTabChange: (value) {
              setState(() {
                index = value;
              });
            },
            selectedIndex: index,
            tabBorderRadius: 20,
            // tabBorder: Border.all(
            //     color: AppColors.primaryColor, width: 1), // tab button border
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 15), // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration:
                const Duration(milliseconds: 500), // tab animation duration
            gap: 5, // the tab button gap between icon and text
            color: AppColors.blackColor, // unselected icon color
            activeColor: AppColors.whiteColor, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                AppColors.primaryColor, // selected tab background color
            // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'الرئيسية',
              ),
              GButton(
                icon: Icons.search,
                text: 'البحث',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: 'التقويم',
              ),
              GButton(
                icon: Icons.person,
                text: 'الصفحة الشخصية',
              )
            ]),
      ),
    );
  }
}
