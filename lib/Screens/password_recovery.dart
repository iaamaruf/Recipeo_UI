import 'package:flutter/material.dart';
import 'package:recipeo/Screens/login_screen.dart';
import 'package:recipeo/Screens/password_veification_code.dart';
import 'package:recipeo/Screens/verify_OTP.dart';
import 'package:recipeo/Utilities/Form%20field/Input_formfield.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  static const String routeName = "PasswordRecoveryScreen";
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {

  final passwordTextController= TextEditingController();
  final emailTextController= TextEditingController();

  bool isPasswordHide = true;
  bool PasswordHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 180,),
            Column(
              children:  [
                const Text('Password Recovery',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      color: Colors.black),
                ),
                const SizedBox(height: 10,),
                const Text('Enter your mail to recover your password',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      color: Colors.grey),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding:  const EdgeInsets.only(left: 25.0, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 20,),

                      InputTextField(
                        controller: emailTextController,
                        hintText: "Email or phone number",
                        prefixIcon: const Icon(Icons.email_outlined, size: 25,),
                      ),
                    ],
                  ),
                ),
              ],

            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Sign in', style: TextStyle(fontSize: 18),),
                  onPressed: () {
                      Navigator.of(context).pushNamed(VerifyOtpScreen.routeName);
                  },
                ),

              ),
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
