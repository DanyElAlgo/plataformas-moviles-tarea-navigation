import 'package:flutter/material.dart';
import 'package:flutter_application_1/accounts.page.dart';
import 'package:flutter_application_1/home.page.dart';
import 'package:flutter_application_1/profile.page.dart';
import 'package:flutter_application_1/config/app_theme.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.path,
      theme: buildAppTheme(),
      routes: {
        HomePage.path: (context) => HomePage(),
        MyAccount.path : (context) => MyAccount(),
        MyWidgetTest.path : (context) => MyWidgetTest(),
      },
    );
  }
}
