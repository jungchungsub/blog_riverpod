import 'package:blog_riverpod/core/routers.dart';
import 'package:blog_riverpod/view/pages/post/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.home,
      routes: {
        Routers.home: (context) => const HomePage(),
        Routers.detail: (context) => const HomePage(),
        Routers.updateForm: (context) => const HomePage(),
        Routers.joinForm: (context) => const HomePage(),
        Routers.loginForm: (context) => const HomePage(),
        Routers.writeForm: (context) => const HomePage(),
        Routers.userInfo: (context) => const HomePage(),
      },
    );
  }
}
