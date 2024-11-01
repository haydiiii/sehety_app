import 'package:flutter/material.dart';

import 'package:sehety_app/core/widget/prim_app_bar_widget.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child:  PrimAppBarWidget(
            titleText: 'مواعيد الحجز',
          )),
    );
  }
}
