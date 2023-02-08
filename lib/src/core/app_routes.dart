import 'package:faramove/src/features/audio/views/audio_view.dart';
import 'package:faramove/src/features/community/views/community_view.dart';
import 'package:faramove/src/features/home/views/home_view.dart';
import 'package:faramove/src/features/root/views/root_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const root = '/root';
  static const home = '/home';
  static const community = '/community';
  static const audio = '/audio';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => const RootView());

      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case community:
        return MaterialPageRoute(builder: (_) => const CommunityView());

      case audio:
        return MaterialPageRoute(builder: (_) => const AudioView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
