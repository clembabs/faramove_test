import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/widgets/platform_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    this.onTap,
    this.currentIndex = 0,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: BottomNavigationBar(
        backgroundColor: AppColors.whitish.withOpacity(.8),
        showUnselectedLabels: true,
        selectedLabelStyle: AppTheme.subtitle1,
        unselectedLabelStyle: AppTheme.subtitle3,
        selectedItemColor: AppColors.wellnessBlue,
        unselectedItemColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: _BottomNavIcon(iconPath: SvgIcons.home),
            activeIcon: _BottomNavIcon(iconPath: SvgIcons.homeActive),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _BottomNavIcon(iconPath: SvgIcons.resources),
            activeIcon:
                _BottomNavIcon(iconPath: SvgIcons.resources, isSelected: true),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: _BottomNavIcon(iconPath: SvgIcons.calendar),
            activeIcon:
                _BottomNavIcon(iconPath: SvgIcons.calendar, isSelected: true),
            label: 'Session',
          ),
          BottomNavigationBarItem(
            icon: _BottomNavIcon(iconPath: SvgIcons.community),
            activeIcon: _BottomNavIcon(iconPath: SvgIcons.communityActive),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: _BottomNavIcon(iconPath: SvgIcons.profile),
            activeIcon:
                _BottomNavIcon(iconPath: SvgIcons.profile, isSelected: true),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class _BottomNavIcon extends StatelessWidget {
  const _BottomNavIcon({
    Key? key,
    required this.iconPath,
    this.isSelected = false,
  }) : super(key: key);

  final String iconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlatformSvg.asset(iconPath,
            color: isSelected ? AppColors.wellnessBlue : null),
        SizedBox(height: 3.77.h),
      ],
    );
  }
}
