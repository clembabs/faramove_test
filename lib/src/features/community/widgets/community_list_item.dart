import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/app_routes.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityListItem extends StatelessWidget {
  final Color color;
  final String imageTitle;
  final String title;
  final String? svg;
  const CommunityListItem(
      {super.key,
      required this.color,
      required this.title,
      this.svg,
      required this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 98.85.h,
                width: 101.w,
                padding: EdgeInsets.only(top: 10.73.h, left: 10.73.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      imageTitle.toUpperCase(),
                      textAlign: TextAlign.start,
                      style: AppTheme.bodyTwo.copyWith(color: Colors.white),
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: PlatformSvg.asset(svg ?? SvgIcons.drugs),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 36.h,
                      width: 210.w,
                      child: Text(title, style: AppTheme.bodyOne),
                    ),
                    SizedBox(height: 7.h),
                    Row(
                      children: [
                        PlatformSvg.asset(SvgIcons.person),
                        SizedBox(width: 8.w),
                        Text('200+',
                            style: AppTheme.bodyOne
                                .copyWith(fontWeight: FontWeight.w500)),
                        SizedBox(width: 14.47.w),
                        PlatformSvg.asset(SvgIcons.letter),
                        SizedBox(width: 8.w),
                        Text('50',
                            style: AppTheme.bodyOne
                                .copyWith(fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.h,
                          child: RowSuper(
                            innerDistance: -5.0,
                            children: [
                              PlatformSvg.asset(SvgIcons.image),
                              PlatformSvg.asset(SvgIcons.image),
                              PlatformSvg.asset(SvgIcons.image)
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 78.w,
                          height: 32.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.wellnessBlue,
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, AppRoutes.audio),
                            child: Text('Join',
                                style: AppTheme.subtitle1
                                    .copyWith(color: Colors.white)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
