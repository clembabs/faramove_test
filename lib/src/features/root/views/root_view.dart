import 'package:faramove/src/features/community/views/community_view.dart';
import 'package:faramove/src/features/home/views/home_view.dart';
import 'package:faramove/src/features/root/providers/root_page_provider.dart';
import 'package:faramove/src/features/root/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootView extends ConsumerWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(rootPageProvider);

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: currentPageIndex,
          children: const [
            HomeView(),
            HomeView(),
            HomeView(),
            CommunityView(),
            HomeView(),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: currentPageIndex,
          onTap: (index) => ref.read(rootPageProvider.notifier).state = index,
        ),
      ),
    );
  }
}
