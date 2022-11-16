import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zoom_transition_flickering_issue/details.dart';
import 'package:zoom_transition_flickering_issue/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: kIsWeb
            ? {
                for (final platform in TargetPlatform.values)
                  platform: const ZoomPageTransitionsBuilder(),
              }
            : const {
                TargetPlatform.android: ZoomPageTransitionsBuilder(),
                TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
                TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
                TargetPlatform.windows: ZoomPageTransitionsBuilder(),
                TargetPlatform.macOS: ZoomPageTransitionsBuilder(),
                TargetPlatform.linux: ZoomPageTransitionsBuilder(),
              },
      ),
    );

    return MaterialApp(
      title: 'zoom_page_transition_flickering_issue',
      theme: themeData.copyWith(
        colorScheme: themeData.colorScheme.copyWith(secondary: Colors.blue),
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
        Details.routeName: (context) => const Details(),
      },
    );
  }
}
