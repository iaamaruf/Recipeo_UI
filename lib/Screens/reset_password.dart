import 'package:flutter/material.dart';
import 'package:recipeo/Screens/login_screen.dart';
import 'package:recipeo/Utilities/Button/default_button.dart';
import 'package:recipeo/Utilities/Form%20field/sign_in_custom_formfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String routeName = "ResetPasswordScreen";
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final passwordTextController= TextEditingController();
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
                const Text('Reset your password!',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      color: Colors.black),
                ),
                const SizedBox(height: 10,),
                const Text('Please enter your new password',
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
                    children:[
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
                    ],
                  ),
                ),
              ],

            ),

            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Your password must contain',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.green.shade100,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.check, color: Colors.green,size: 18,),
                        ),

                      ),
                      const SizedBox(width: 10,),
                      const Text(
                        'At least 6 charecter',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.check, color: Colors.grey,size: 18,),
                        ),

                      ),
                      SizedBox(width: 10,),
                      const Text(
                        'Contain a number',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: Center(
                child: DefaultButton(
                  paddingBottom: 15,
                  paddingTop: 15,
                  buttonText: "Done",
                  onTap: (){
                    Navigator.of(context).pushNamed(LogInScreen.routeName);
                  },
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
