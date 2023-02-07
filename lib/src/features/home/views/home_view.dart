import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/features/home/wigdets/home_app_header.dart';
import 'package:faramove/src/features/home/wigdets/item_card.dart';
import 'package:faramove/src/features/home/wigdets/quick_actions.dart';
import 'package:faramove/src/features/home/wigdets/top_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppHeader(),
            TopHeader(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  QuickActions(),
                  SizedBox(height: 14.h),
                ],
              ),
            ),
            Divider(color: AppColors.divider, height: 4.h, thickness: 4),
            HomeItemCard(text: 'Upcoming Session (0)'),
            Divider(color: AppColors.divider, height: 4.h, thickness: 4),
            HomeItemCard(
              text: 'Tips to stay healthy',
              description: 'Get simple health tips.',
            ),
          ],
        ),
      ),
    );
  }
}
