import 'package:d2e/res/color.dart';
import 'package:d2e/ui/auth/login_screen.dart';
import 'package:d2e/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: AppColors.red,
        ),
        home: WelcomeScreen(),
      );
    });
  }
}
