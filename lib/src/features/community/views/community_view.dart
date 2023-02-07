import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/svg_icons.dart';
import 'package:faramove/src/features/community/widgets/community_header.dart';
import 'package:faramove/src/features/community/widgets/community_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommunityHeader(),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.WellnessOrange,
                  imageTitle: 'USE OF DRUGS',
                  title: 'Talks about treatment, Pathways',
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.purple,
                  imageTitle: 'USE OF DRUGS',
                  title: 'How was your first session experiencee?',
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.orange,
                  imageTitle: 'USE OF DRUGS',
                  title: 'How to live with cancer and be mentally stable .',
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.lightPurple,
                  imageTitle: 'Therapy',
                  title: 'Is reliance on drugs a good thing?',
                  svg: SvgIcons.theraphy,
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.lightPurple,
                  imageTitle: 'Therapy',
                  title: 'Talks about treatment, Pathways',
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.lightPurple,
                  imageTitle: 'USE OF DRUGS',
                  title: 'Talks about treatment, Pathways',
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
                CommunityListItem(
                  color: AppColors.lightPurple,
                  imageTitle: 'Therapy',
                  title: 'Talks about treatment, Pathways',
                ),
                Divider(color: AppColors.divider, height: 2.h, thickness: 4),
              ],
            )
          ],
        ),
      ),
    );
  }
}
