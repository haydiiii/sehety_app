import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/prim_app_bar_widget.dart';
import 'package:sehety_app/features/patient/home/presentation/view/widgets/search_bar_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: PrimAppBarWidget(
            titleText: ' إبحث عن دكتور ',
          )),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(10),
            SearchBarWidget(
              text: 'البحث ',
              searchController: searchController,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.search, color: AppColors.primaryColor)),
            ),
            const Gap(10),
            Text(
              'عرض كل الدكاتره ',
              style: getTitleStyle(),
            ),
            SvgPicture.asset(
              AssetsImage.noSearch,
              width: 300,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
