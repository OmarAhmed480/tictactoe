import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe/Screen/SplashScreen.dart';
import 'package:tictactoe/Screen/homeScreen.dart';
import 'package:tictactoe/utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(357, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          initialRoute: AppRoute.splashRouteName,
          routes: {
            AppRoute.splashRouteName:(context)=>Splashscreen(),
            AppRoute.homeRouteName:(context)=>HomeScreen(),


          }
      ),
    );
  }
}
