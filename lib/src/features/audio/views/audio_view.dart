import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:faramove/src/core/app_colors.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/features/audio/models/audio_source_data.dart';
import 'package:faramove/src/features/audio/models/position_data.dart';
import 'package:faramove/src/features/audio/widgets/audio_controls.dart';
import 'package:faramove/src/features/audio/widgets/audio_header.dart';
import 'package:faramove/src/features/audio/widgets/media_metadata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioView extends StatefulWidget {
  const AudioView({super.key});

  @override
  State<AudioView> createState() => _AudioViewState();
}

class _AudioViewState extends State<AudioView> {
  late AudioPlayer _audioPlayer;

  final _playlist = ConcatenatingAudioSource(children: playlists);

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset('assets/audio/nature.mp3');
    // _audioPlayer = AudioPlayer();
    // _init();
  }

  // Future<void> _init() async {
  //   await _audioPlayer.setLoopMode(LoopMode.all);
  //   await _audioPlayer.setAudioSource(_playlist);
  // }

  Stream<PositionData> get _positionedDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (position, bufferedPosition, duration) => PositionData(
                position,
                bufferedPosition,
                duration ?? Duration.zero,
              ));

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AudioHeader(),
            SizedBox(height: 38.h),
            MediaMetadata(imageUrl: '', title: 'Stay Motivated', artist: ''),
            // StreamBuilder<SequenceState?>(
            //     stream: _audioPlayer.sequenceStateStream,
            //     builder: (context, snapshot) {
            //       final state = snapshot.data;
            //       if (state?.sequence.isEmpty ?? true) {
            //         return SizedBox.shrink();
            //       }
            //       return SizedBox.shrink();
            //       // final metadata = state!.currentSource!.tag as MediaItem;
            //       // return MediaMetadata(
            //       //   imageUrl: metadata.artUri.toString(),
            //       //   title: metadata.artist ?? '',
            //       //   artist: metadata.title,
            //       // );
            //     }),
            StreamBuilder<PositionData>(
                stream: _positionedDataStream,
                builder: (context, snapshot) {
                  final positionData = snapshot.data;
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: ProgressBar(
                      barHeight: 8.h,
                      baseBarColor: AppColors.lightBlue.withOpacity(.6),
                      bufferedBarColor: AppColors.lightBlue,
                      progressBarColor: AppColors.wellnessBlue,
                      thumbColor: AppColors.wellnessBlue,
                      timeLabelTextStyle: AppTheme.subtitle2,
                      progress: positionData?.position ?? Duration.zero,
                      buffered: positionData?.bufferedPosition ?? Duration.zero,
                      total: positionData?.duration ?? Duration.zero,
                      onSeek: _audioPlayer.seek,
                    ),
                  );
                }),
            AudioControls(audioPlayer: _audioPlayer),
          ],
        ),
      ),
    );
  }
}
