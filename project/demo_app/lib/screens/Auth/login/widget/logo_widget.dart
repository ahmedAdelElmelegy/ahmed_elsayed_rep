import 'package:demo_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.logo,
          width: 70.h,
        ),
        Text(
          'BRACETY',
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w900,
              color: const Color(0xffDB783F)),
        ),
      ],
    );
  }
}
