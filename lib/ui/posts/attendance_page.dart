import 'package:d2e/res/background_img.dart';
import 'package:d2e/res/color.dart';
import 'package:d2e/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class AttendancePageScreen extends StatefulWidget {
  const AttendancePageScreen({super.key});

  @override
  State<AttendancePageScreen> createState() => _AttendancePageScreenState();
}

class _AttendancePageScreenState extends State<AttendancePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B.tech first year"),
      ),
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Container(
                  height: 6.h,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "1. ",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "Rishabh singh satya",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SmallButton(
                        myIcon: const Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                        color: Colors.green,
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      SmallButton(
                        myIcon: const Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                        ),
                        color: AppColors.primaryColor,
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
