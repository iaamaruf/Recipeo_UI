import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipeo/Utilities/Others/app_defaults.dart';
import 'package:recipeo/Utilities/Others/colors.dart';



class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      colorSchemeSeed: AppColor.appBackgroundColor,
      fontFamily: "Inter",
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ButtontColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(15),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: AppDefaults.borderRadius,
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor:AppColor.red ,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(AppDefaults.padding),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: AppDefaults.borderRadius,
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }


}
