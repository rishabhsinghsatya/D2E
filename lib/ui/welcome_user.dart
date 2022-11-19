import 'package:d2e/res/background_img.dart';
import 'package:d2e/res/color.dart';
import 'package:d2e/ui/auth/login_screen.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:sizer/sizer.dart';

class WelcomeUserScreen extends StatefulWidget {
  final String name;
  const WelcomeUserScreen({super.key, required this.name});

  @override
  State<WelcomeUserScreen> createState() => _WelcomeUserScreenState();
}

class _WelcomeUserScreenState extends State<WelcomeUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          ListView(children: [
            Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  FadeInDown(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hello! \n" + widget.name.toString(),
                          style: TextStyle(
                              fontSize: 25.sp,
                              color: AppColors.primaryTextTextColor,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 20.w),
                        Image.asset(
                          "assets/images/helloBoy.png",
                          height: 40.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 11.h,
                    width: 75.w,
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Column(
                        children: [
                          FadeInLeft(
                            preferences: AnimationPreferences(
                                duration: Duration(seconds: 3)),
                            child: Text(
                              textAlign: TextAlign.start,
                              "Hello " +
                                  widget.name.toString() +
                                  "!\nYour welcome again. Now you are free to make your own classroom. ",
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 13.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.w)),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  //   child: FadeInRight(
                  //     child: TextFormField(
                  //       controller: NameController,
                  //       decoration: InputDecoration(
                  //         isDense: true,
                  //         contentPadding: EdgeInsets.all(8.sp),
                  //         filled: true,
                  //         fillColor: Colors.white,
                  //         hintText: "Enter Your Name...",
                  //         border: OutlineInputBorder(),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: FadeInUp(
                        child: RoundButton(
                            title: "Register",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            })),
                  )
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
