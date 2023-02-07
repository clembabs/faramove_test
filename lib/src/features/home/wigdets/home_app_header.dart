import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppHeader extends StatelessWidget {
  const HomeAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlatformSvg.asset(SvgIcons.image),
          SizedBox(width: 12.w),
          Text(
            'Hi, Sarah',
            style: AppTheme.headlineTwo,
          ),
          Spacer(),
          PlatformSvg.asset(SvgIcons.chat),
          SizedBox(width: 12.w),
          PlatformSvg.asset(SvgIcons.notifications),
        ],
      ),
    );
  }
}
