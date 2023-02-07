import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.lightBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlatformSvg.asset(SvgIcons.exclamationMark),
          SizedBox(width: 12.w),
          SizedBox(
            width: 168.w,
            height: 34.h,
            child: Text(
              'Go to your profile to complete registration',
              style: AppTheme.subtitle2,
            ),
          ),
          Spacer(),
          PlatformSvg.asset(SvgIcons.arrowRightSvg)
        ],
      ),
    );
  }
}
