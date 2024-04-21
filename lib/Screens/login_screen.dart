import 'package:flutter/material.dart';
import 'package:recipeo/Screens/password_recovery.dart';
import 'package:recipeo/Screens/sign_up.dart';
import 'package:recipeo/Utilities/Button/border_button.dart';
import 'package:recipeo/Utilities/Form%20field/sign_in_custom_formfield.dart';
import 'package:recipeo/Utilities/Others/colors.dart';
import 'package:recipeo/Utilities/Button/default_button.dart';

class LogInScreen extends StatefulWidget {
  static const String routeName = "LogInScreen";
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  final passwordTextController= TextEditingController();
  final emailTextController= TextEditingController();

  bool isPasswordHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 180,),


            Column(
              children:  [
                const Text('Welcome Back !',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      color: Colors.black),
                ),
                const SizedBox(height: 10,),
                const Text('Please enter your account here',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      color: Colors.grey),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding:  const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 20,),

                      LoginCustomInputField(
                        controller: emailTextController,
                        hintText: "Email or phone number",
                        prefixIcon: const Icon(Icons.email_outlined, size: 25,),
                      ),
                      const SizedBox(height: 15),
                      LoginCustomInputField(
                        controller: passwordTextController,
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Password can't be empty";
                          }
                          return null;
                        },
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock_outline_sharp, size: 25,),
                        obscureText: isPasswordHide,
                        suffixWidget: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordHide =
                              !isPasswordHide;
                            });
                          },
                          child: Icon(
                            isPasswordHide
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 22.0,
                          ),
                        ),
                      ),
                      const SizedBox(height:5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: GestureDetector(
                              onTap: ()   async {
                                Navigator.of(context).pushNamed(PasswordRecoveryScreen.routeName);
                              },
                              child:  Text(
                                'Forget password?',
                                style: TextStyle(
                                  color: AppColor.deepGray,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],

            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: Center(
                child: DefaultButton(
                  paddingBottom: 15,
                  paddingTop: 15,
                  buttonText: "Login",
                  onTap: (){
                    Navigator.of(context).pushNamed(LogInScreen.routeName);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Column(
              children: const [
                Text('Or continue with',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                    color:Colors.grey
                  ),
                ),
              ],

            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 35),
              child: Center(
                child: BorderButton(
                  buttonText: "Google",
                  onTap: (){
                    Navigator.of(context).pushNamed(LogInScreen.routeName);
                  }, paddingBottom: 20,
                ),
              ),
            ),
            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have any account?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  const SizedBox(width: 8,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(SignUpScreen.routeName);
                    },
                    child:  Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        color:AppColor.ButtontColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
