import 'package:d2e/res/background_img.dart';
import 'package:d2e/res/color.dart';
import 'package:d2e/ui/posts/workspace.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class VerifyOTPScreen extends StatefulWidget {
  final String verificationID;
  const VerifyOTPScreen({super.key, required this.verificationID});

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 20.h,
                      //   width: 10.w,
                      //   child: TextFormField(
                      //     onSaved: (pin1) {},
                      //     decoration: InputDecoration(hintText: "0"),
                      //     onChanged: (value) {
                      //       FocusScope.of(context).nextFocus();
                      //     },
                      //     style: Theme.of(context).textTheme.headline6,
                      //     keyboardType: TextInputType.number,
                      //     textAlign: TextAlign.center,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(1),
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20.h,
                      //   width: 10.w,
                      //   child: TextFormField(
                      //     onSaved: (pin2) {},
                      //     decoration: InputDecoration(hintText: "0"),
                      //     onChanged: (value) {
                      //       FocusScope.of(context).nextFocus();
                      //     },
                      //     style: Theme.of(context).textTheme.headline6,
                      //     keyboardType: TextInputType.number,
                      //     textAlign: TextAlign.center,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(1),
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20.h,
                      //   width: 10.w,
                      //   child: TextFormField(
                      //     onSaved: (pin3) {},
                      //     decoration: InputDecoration(hintText: "0"),
                      //     onChanged: (value) {
                      //       FocusScope.of(context).nextFocus();
                      //     },
                      //     style: Theme.of(context).textTheme.headline6,
                      //     keyboardType: TextInputType.number,
                      //     textAlign: TextAlign.center,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(1),
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20.h,
                      //   width: 10.w,
                      //   child: TextFormField(
                      //     onSaved: (pin4) {},
                      //     decoration: InputDecoration(hintText: "0"),
                      //     onChanged: (value) {
                      //       FocusScope.of(context).nextFocus();
                      //     },
                      //     style: Theme.of(context).textTheme.headline6,
                      //     keyboardType: TextInputType.number,
                      //     textAlign: TextAlign.center,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(1),
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20.h,
                      //   width: 10.w,
                      //   child: TextFormField(
                      //     onSaved: (pin5) {},
                      //     decoration: InputDecoration(hintText: "0"),
                      //     onChanged: (value) {
                      //       FocusScope.of(context).nextFocus();
                      //     },
                      //     style: Theme.of(context).textTheme.headline6,
                      //     keyboardType: TextInputType.number,
                      //     textAlign: TextAlign.center,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(1),
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20.h,
                      //   width: 10.w,
                      //   child: TextFormField(
                      //     onSaved: (pin1) {},
                      //     decoration: InputDecoration(hintText: "0"),
                      //     onChanged: (value) {
                      //       FocusScope.of(context).nextFocus();
                      //     },
                      //     style: Theme.of(context).textTheme.headline6,
                      //     keyboardType: TextInputType.number,
                      //     textAlign: TextAlign.center,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(1),
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //   ),
                      // ),
                      OTPCell(pin: "pin1", inSec: 1),
                      OTPCell(pin: "pin2", inSec: 2),
                      OTPCell(pin: "pin3", inSec: 3),
                      OTPCell(pin: "pin4", inSec: 3),
                      OTPCell(pin: "pin5", inSec: 2),
                      OTPCell(pin: "pin6", inSec: 1),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.w),
                          bottomLeft: Radius.circular(5.w))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't recieve OTP?"),
                        TextButton(onPressed: () {}, child: Text("Resend"))
                      ]),
                ),
                SizedBox(
                  height: 20.h,
                ),
                RoundButton(
                    title: "Confirm",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkspaceScreen()));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Center(
//     child: Padding(
//   padding: EdgeInsets.symmetric(horizontal: 4.w),
//   child: RoundButton(
//       title: "Done",
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => WorkspaceScreen()));
//       }),
// ))
class OTPCell extends StatelessWidget {
  final String pin;
  final int inSec;

  const OTPCell({super.key, required this.pin, required this.inSec});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      preferences: AnimationPreferences(duration: Duration(seconds: inSec)),
      child: SizedBox(
        // height: 20.h,
        width: 12.w,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.sp),
              border: Border.all(color: AppColors.primaryColor, width: 2.sp)),
          child: TextFormField(
            onSaved: (pin1) {},
            decoration: InputDecoration(hintText: "0"),
            onChanged: (value) {
              FocusScope.of(context).nextFocus();
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ),
    );
  }
}
