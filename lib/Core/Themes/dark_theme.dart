import 'package:feeling_state_management_ways_provider/Core/Constants/color_const.dart';
import 'package:flutter/material.dart';

mixin CThemeMixin {
  ThemeData get darkTheme => ThemeData.dark().copyWith(
      //Appbar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: CColors.primarybackground.withOpacity(0),
        centerTitle: true,
        elevation: 0,
      ),

      //Scaffold Theme
      scaffoldBackgroundColor: CColors.scaffoldbackground,

      //Floating Action Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: CColors.primarybackground,
          foregroundColor: CColors.foregroundFab),

      //Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: CColors.primarybackground,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      )),

      //Input Decoration Theme
      inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))));
}
