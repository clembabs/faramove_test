import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AudioHeader extends StatelessWidget {
  const AudioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlatformSvg.asset(SvgIcons.arrowDown),
          SizedBox(width: 6.w),
          Text(
            'Stay Motivated Ep. 1',
            style: AppTheme.headlineTwo,
          ),
          Spacer(),
          PlatformSvg.asset(SvgIcons.collection),
          SizedBox(width: 22.w),
          PlatformSvg.asset(SvgIcons.save),
        ],
      ),
    );
  }
}
