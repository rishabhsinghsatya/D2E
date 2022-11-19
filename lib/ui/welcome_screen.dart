import 'package:d2e/res/background_img.dart';
import 'package:d2e/res/color.dart';
import 'package:d2e/ui/auth/login_screen.dart';
import 'package:d2e/ui/welcome_user.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        BackgroundImage(),
        ListView(children: [
          Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                FadeInDown(
                  child: Text(
                    "Welcome \n to \n Done 2 Everyone",
                    style: TextStyle(
                      fontSize: 35.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      // shadows: const <Shadow>[
                      //   Shadow(
                      //     offset: Offset(10.0, 10.0),
                      //     blurRadius: 3.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   Shadow(
                      //     offset: Offset(10.0, 10.0),
                      //     blurRadius: 8.0,
                      //     color: AppColors.primaryColor,
                      //   ),
                      // ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                FadeInLeft(
                  child: Container(
                    height: 25.h,
                    width: 95.w,
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "You free to make your class attendance, On your phone to grab better experience without pen & paper! ",
                            style: TextStyle(
                                color: AppColors.textColor, fontSize: 13.sp),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                              "Click on next to explore with Done 2 Everyone platform.",
                              style: TextStyle(
                                  color: AppColors.secondaryTextColor,
                                  fontSize: 12.sp)),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.w)),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: FadeInRight(
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(8.sp),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter Your Nickname...",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                FadeInUp(
                  child: RoundButton(
                      title: "Next",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeUserScreen(
                                      name: nameController.text.toString(),
                                    )));
                      }),
                )
              ],
            ),
          ),
        ]),
      ],
    ));
  }
}
