import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/features/auth/presentation/manager/auth_cubit.dart';
import 'package:sehety_app/features/auth/presentation/view/regiteration_doctor_done.dart';
import 'package:sehety_app/features/splash/view/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCRPhtrxgluTx8v-847c0511ZHoKXTE8wY",
    appId: 'com.example.sehety_app',
    messagingSenderId: '310697058415',
    projectId: 'sehety-app',
  ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        theme: ThemeData(
            dividerTheme: const DividerThemeData(
              color: AppColors.greyColor,
              endIndent: 20,
              indent: 20,
            ),
            appBarTheme:
                const AppBarTheme(backgroundColor: AppColors.primaryColor),
            inputDecorationTheme: InputDecorationTheme(
              fillColor: AppColors.secondaryColor.withOpacity(0.2),
              filled: true,
            )),
        debugShowCheckedModeBanner: false,
        home: const RegiterationDoctorDone(),
        builder: (context, child) {
          return Directionality(
              textDirection: TextDirection.rtl, child: child!);
        },
      ),
    );
  }
}
