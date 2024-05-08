import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_flow/screens/desktop_screen.dart';
import 'package:team_flow/screens/mobile_screen.dart';
import 'package:team_flow/utils/sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        theme: ThemeData(fontFamily: "Inter"),
        debugShowCheckedModeBanner: false,
        home: SizeUtils.screenWidth(context) < 480
            ? const MobileScreen()
            : const DesktopScreen(),
      ),
    );
  }
}
