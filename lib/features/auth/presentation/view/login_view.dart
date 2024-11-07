import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sehety_app/core/constatnts/assets_image.dart';
import 'package:sehety_app/core/functions/custom_load_dialog.dart';
import 'package:sehety_app/core/functions/routing.dart';
import 'package:sehety_app/core/functions/show_error_dialog.dart';
import 'package:sehety_app/core/utils/colors.dart';
import 'package:sehety_app/core/utils/text_style.dart';
import 'package:sehety_app/core/widget/custm_txt_formfield.dart';
import 'package:sehety_app/core/widget/custom_button.dart';
import 'package:sehety_app/features/auth/presentation/manager/auth_cubit.dart';
import 'package:sehety_app/features/auth/presentation/manager/auth_states.dart';
import 'package:sehety_app/features/auth/presentation/view/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key, required this.index});
  final int index;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String handleUserType() {
    return widget.index == 0 ? 'دكتور' : 'مريض';
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthStates>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              Navigator.pop(context);
              log('Done');
            } else if (state is LoginErrorState) {
              Navigator.pop(context);
              showErrorDialog(context: context, message: (state.error));
            } else {
              showLoadingDialog(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetsImage.splash,
                      width: 300,
                      height: 300,
                    ),
                    Text(
                      'ٍسجل دخول ك "${handleUserType()}"',
                      style: getbodyStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const Gap(10),
                    CustomTextFormField(
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.end,
                      controller: emailController,
                      hintText: 'haydi@example.com',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      obscureText: false,
                    ),
                    const Gap(25),
                    CustomTextFormField(
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textAlign: TextAlign.end,
                      controller: passwordController,
                      hintText: '**********',
                      keyboardType: TextInputType.number,
                      prefixIcon: Icons.lock,
                      suffixIcon: isVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      obscureText: !isVisible,
                      // validator: (value) =>
                      //     (value!.isEmpty) ? 'Please Enter Password' : null,
                      onPressed: toggleVisibility,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(top: 5, right: 10),
                      child: Text(
                        'نسيت كلمة السر ؟',
                        style: getsmallStyle(),
                      ),
                    ),
                    const Gap(25),
                    CustomButton(
                      width: double.infinity,
                      color: AppColors.primaryColor,
                      onPressed: () {
                        context.read<AuthCubit>().login(
                              emailController.text,
                              passwordController.text,
                            );
                      },
                      text: 'تسجيل دخول',
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ليس لدي حساب ؟   ', style: getbodyStyle()),
                        TextButton(
                            onPressed: () {
                              pushReplacement(
                                  context,
                                  RegisterView(
                                    index: widget.index,
                                  ));
                            },
                            child: Text(
                              'تسجيل',
                              style: getbodyStyle(
                                color: AppColors.primaryColor,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
