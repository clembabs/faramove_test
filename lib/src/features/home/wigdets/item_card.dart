import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeItemCard extends StatelessWidget {
  final String text;
  final String? description;
  const HomeItemCard({super.key, required this.text, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: AppTheme.headlineThree,
              ),
              if (description != null) SizedBox(height: 2.h),
              if (description != null)
                Text(
                  description!,
                  style: AppTheme.subtitle1.copyWith(color: AppColors.grey),
                ),
            ],
          ),
          Spacer(),
          PlatformSvg.asset(SvgIcons.arrowRightSvg),
        ],
      ),
    );
  }
}
