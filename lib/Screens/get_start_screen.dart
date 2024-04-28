import 'package:flutter/material.dart';
import 'package:recipeo/Screens/login_screen.dart';
import 'package:recipeo/Utilities/Others/start_image.dart';


class GetStartScreen extends StatelessWidget {
  static const String routeName = "StartScreen";
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 500,
                    child:CircularImageGrid()
                ),
              ],
            ),
            const SizedBox(height: 20,),


            Column(
              children: const [
                Text('Start Cooking',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                      color: Colors.black),
                ),
                Text('Lets check our community\n '
                    '      to cook better food !',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      color: Colors.grey),
                ),
              ],

            ),
              const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text('Get Start', style: TextStyle(fontSize: 18),),
              onPressed: () {
                Navigator.of(context).pushNamed(LogInScreen.routeName);
              },
            ),

          ),
        )
        ]
      )

      )
    );
  }
}
