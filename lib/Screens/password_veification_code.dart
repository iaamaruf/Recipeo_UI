import 'package:flutter/material.dart';
import 'package:recipeo/Screens/reset_password.dart';
import 'package:recipeo/Utilities/Button/default_button.dart';
import 'package:recipeo/Utilities/Others/colors.dart';

class PasswordVerificationCodeScreen extends StatefulWidget {
  static const String routeName = "PasswordVerificationCodeScreen";

  const PasswordVerificationCodeScreen({super.key});

  @override
  State<PasswordVerificationCodeScreen> createState() => _PasswordVerificationCodeScreenState();
}

class _PasswordVerificationCodeScreenState extends State<PasswordVerificationCodeScreen> {

  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 180,),


            Column(
              children:  [
                const Text('Check your email',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      color: Colors.black),
                ),
                const SizedBox(height: 10,),
                const Text('We have sent mail to your mail',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                              (index) => SizedBox(
                            width: 60.0,
                            child: TextField(
                              controller: controllers[index],
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                counterText: '',
                                contentPadding: const EdgeInsets.all(20.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.newButtonColor, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onChanged: (value) {
                                print("Entered OTP: $value");
                                if (value.isNotEmpty && index < 3) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Code expires in : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "3:12 ",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700
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
                  buttonText: "Next",
                  onTap: (){
                    Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
                  },
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.white,
                    border: Border.all(color: Colors.grey)
                ),
                child: const Center(
                  child: Text('send again' , style: TextStyle(fontSize: 20,color: Colors.grey),
                  ),
                ),

              ),
            )

          ],
        ),
      ),
    );
  }
}
