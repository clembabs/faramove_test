import 'package:faramove/src/features/home/views/home_view.dart';
import 'package:faramove/src/features/root/views/root_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const root = '/root';
  static const home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => const RootView());

      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());

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
