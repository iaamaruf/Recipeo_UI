import 'package:flutter/material.dart';
import 'package:recipeo/Screens/login_screen.dart';
import 'package:recipeo/Screens/password_recovery.dart';
import 'package:recipeo/Screens/password_veification_code.dart';
import 'package:recipeo/Screens/reset_password.dart';
import 'package:recipeo/Screens/sign_up.dart';
import 'package:recipeo/Screens/get_start_screen.dart';
import 'package:recipeo/Screens/verify_OTP.dart';
import 'package:recipeo/Utilities/app_themes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipeo App',
      theme: AppTheme.defaultTheme,
      initialRoute: GetStartScreen.routeName,
      routes: {
        GetStartScreen.routeName : (context)=> const GetStartScreen(),
        LogInScreen.routeName : (context)=> const LogInScreen(),
        SignUpScreen.routeName : (context)=> const SignUpScreen(),
        PasswordRecoveryScreen.routeName : (context)=> const PasswordRecoveryScreen(),
        VerifyOtpScreen.routeName : (context)=> const VerifyOtpScreen(),
        PasswordVerificationCodeScreen.routeName : (context)=> const PasswordVerificationCodeScreen(),
        ResetPasswordScreen.routeName : (context)=> const ResetPasswordScreen(),








      },
    );
  }
}

