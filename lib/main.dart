import 'package:ab_assessment/src/screens/home_screen/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 967),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AB Assessment',
          theme: ThemeData(
            fontFamily: 'Karla',
            scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          ),
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
