import 'package:d2e/res/background_img.dart';
import 'package:d2e/res/color.dart';
import 'package:d2e/ui/otp_verify.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgroundImage(),
        ListView(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                FadeInUpBig(
                  preferences:
                      AnimationPreferences(duration: Duration(seconds: 2)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 21.w,
                    child: Image.asset(
                      "assets/images/logo.png", color: Colors.black,
                      // height: 20.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                FadeInUpBig(
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                FadeInDownBig(
                  preferences:
                      AnimationPreferences(duration: Duration(seconds: 2)),
                  child: Container(
                    height: 50.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 8.h, 5.w, 0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(hintText: "Username"),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          IntlPhoneField(
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(),
                              // ),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.countryCode);
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          RoundButton(
                              title: "Get OTP",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VerifyOTPScreen()));
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ],
    ));
  }
}
