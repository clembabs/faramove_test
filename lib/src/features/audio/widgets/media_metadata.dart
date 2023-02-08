import 'package:cached_network_image/cached_network_image.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaMetadata extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artist;
  const MediaMetadata(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.artist});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl:
                  'https://images.unsplash.com/photo-1433086966358-54859d0ed716',
              height: 321.h,
              width: 334.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 32.h),
        Text(
          title,
          style: AppTheme.headlineThree,
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: AppTheme.subtitle3.copyWith(fontSize: 14),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
