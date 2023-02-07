import 'package:faramove/src/core/app_routes.dart';
import 'package:faramove/src/core/app_theme.dart';
import 'package:faramove/src/features/root/views/root_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, widget) => MaterialApp(
            title: 'Faramove',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            home: RootView(),
            builder: (context, widget) {
              return MediaQuery(
                //Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            onGenerateRoute: AppRoutes.generateRoute,
          ));
}
