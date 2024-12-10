import 'package:demo_app/core/utils/spacing.dart';
import 'package:demo_app/core/widget/custom_button.dart';
import 'package:demo_app/core/widget/custom_text_field.dart';
import 'package:demo_app/screens/Auth/login/widget/logo_widget.dart';
import 'package:demo_app/screens/Auth/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Loginviewbody extends StatelessWidget {
  const Loginviewbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpacing(height: 100),
          const LogoWidget(),
          verticalSpacing(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                const CustomTextField(
                  prefixIcon: Icons.email,
                  hintText: 'Email',
                ),
                verticalSpacing(height: 24),
                const CustomTextField(
                  prefixIcon: Icons.key,
                  hintText: 'Password',
                  suffixIcon: Icons.remove_red_eye_outlined,
                ),
                verticalSpacing(height: 24),
                const CustomButton(),
                verticalSpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have an account?'),
                    TextButton(
                        onPressed: () {
                          Get.to(const SignUpView());
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
