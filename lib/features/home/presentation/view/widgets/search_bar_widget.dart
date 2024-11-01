import 'package:flutter/material.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          style: getbodyStyle(),
          controller: searchController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25)),
              hintText: 'ابحث عن دكتور',
              suffixIcon: FloatingActionButton(
                backgroundColor: AppColors.primaryColor,
                onPressed: () {},
                child: const Icon(
                  Icons.search,
                  color: AppColors.whiteColor,
                ),
              )),
        ));
  }
}