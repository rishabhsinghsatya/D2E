import 'package:d2e/res/background_img.dart';
import 'package:d2e/ui/posts/workspace.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({super.key});

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
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: RoundButton(
                title: "Done",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WorkspaceScreen()));
                }),
          ))
        ],
      ),
    );
  }
}
