import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: AppTheme.headlineThree,
        ),
        SizedBox(height: 16.h),
        _QuickActionBox(
          'Book a session',
          'Get prompt assistance from medical professionals.',
          SvgIcons.medicalEquipment,
          AppColors.orange,
          SvgIcons.bookSession,
        ),
        SizedBox(height: 16.h),
        _QuickActionBox(
          'Diary',
          'Listen to the highlight from your previous session',
          SvgIcons.openBook,
          AppColors.deepOrange,
          SvgIcons.diaryCover,
        ),
        SizedBox(height: 16.h),
        _QuickActionBox(
          'Virtual assistant',
          'Get easy access to converse with the assistant on how you feel.',
          SvgIcons.headset,
          AppColors.purple,
          SvgIcons.virtualAssistant,
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}

class _QuickActionBox extends StatelessWidget {
  final String title;
  final String description;
  final String svg;
  final Color color;
  final String background;
  const _QuickActionBox(
    this.title,
    this.description,
    this.svg,
    this.color,
    this.background,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      padding: EdgeInsets.only(left: 16.w, right: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24.h, bottom: 16.6.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTheme.bodyOne.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 6.h),
                    SizedBox(
                      width: 188.w,
                      child: Text(
                        description,
                        style: AppTheme.subtitle2.copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              PlatformSvg.asset(background)
            ],
          ),
          PlatformSvg.asset(svg),
        ],
      ),
    );
  }
}
