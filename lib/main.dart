import 'package:blog_riverpod/core/routers.dart';
import 'package:blog_riverpod/view/pages/post/detail_page.dart';
import 'package:blog_riverpod/view/pages/post/home_page.dart';
import 'package:blog_riverpod/view/pages/post/update_page.dart';
import 'package:blog_riverpod/view/pages/post/write_page.dart';
import 'package:blog_riverpod/view/pages/user/join_page.dart';
import 'package:blog_riverpod/view/pages/user/login_page.dart';
import 'package:blog_riverpod/view/pages/user/user_info_page.dart';
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
      initialRoute: Routers.joinForm,
      routes: {
        Routers.home: (context) => HomePage(),
        Routers.detail: (context) => DetailPage(),
        Routers.updateForm: (context) => UpdatePage(),
        Routers.joinForm: (context) => JoinPage(),
        Routers.loginForm: (context) => LoginPage(),
        Routers.writeForm: (context) => WritePage(),
        Routers.userInfo: (context) => UserInfoPage(),
      },
    );
  }
}
