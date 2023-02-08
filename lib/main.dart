import 'package:feeling_state_management_ways_provider/Core/Themes/dark_theme.dart';
import 'package:feeling_state_management_ways_provider/Login/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with CThemeMixin {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const LoginView(),
    );
  }
}
