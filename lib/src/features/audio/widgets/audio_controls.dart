import 'package:faramove/src/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

class AudioControls extends StatelessWidget {
  final AudioPlayer audioPlayer;
  const AudioControls({super.key, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: audioPlayer.seekToPrevious,
            iconSize: 28.sp,
            color: AppColors.primaryColor,
            icon: Icon(Icons.skip_previous_rounded),
          ),
          StreamBuilder<PlayerState>(
              stream: audioPlayer.playerStateStream,
              builder: (context, snapshot) {
                final playState = snapshot.data;
                final processingState = playState?.processingState;
                final playing = playState?.playing;
                if (!(playing ?? false)) {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: audioPlayer.play,
                      iconSize: 63.sp,
                      color: Colors.white,
                      icon: Icon(Icons.play_arrow_rounded),
                    ),
                  );
                } else if (!(processingState != ProcessingState.completed)) {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: audioPlayer.pause,
                      iconSize: 63.sp,
                      color: Colors.white,
                      icon: Icon(Icons.pause_rounded),
                    ),
                  );
                }
                return Container(
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 63.sp,
                    color: Colors.white,
                  ),
                );
              }),
          IconButton(
            onPressed: audioPlayer.seekToNext,
            iconSize: 28.sp,
            color: AppColors.primaryColor,
            icon: Icon(Icons.skip_next_rounded),
          ),
        ],
      ),
    );
  }
}
