import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

final List<AudioSource> playlists = [
  AudioSource.uri(
    Uri.parse('assets:///assets/audio/nature.mp3'),
    tag: MediaItem(
      id: '0',
      title: 'Nature Sounds',
      artist: 'Public Domain',
      artUri: Uri.parse(
        'https://images.unsplash.com/photo-1433086966358-54859d0ed716',
      ),
    ),
  ),
  AudioSource.uri(
    Uri.parse(
        'https://traffic.megaphone.fm/LI9282413157.mp3?updated=1666999832'),
    tag: MediaItem(
      id: '0',
      title: 'Nature Sounds',
      artist: 'Public Domain',
      artUri: Uri.parse(
        'https://images.unsplash.com/photo-1433086966358-54859d0ed716',
      ),
    ),
  )
];
