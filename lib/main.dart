import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supper/layout/news_app/news_layout.dart';
import 'package:supper/layout/shop_app/shop_layout.dart';
import 'package:supper/layout/todo_app/todo_layout.dart';
import 'package:supper/modules/bmi_app/bmi_result/bmi_result_screen.dart';
import 'package:supper/modules/bmi_app/bmi/calculator_screen.dart';
import 'package:supper/modules/counter_app/counter/counter_screen.dart';
import 'package:supper/modules/basics/login/login_screen.dart';
import 'package:supper/modules/shop_app/on_boarding/on_boarding_screen.dart';

import 'network/local/cache_helper.dart';
import 'network/remote/dio_helper.dart';

void main()
//async
{
  //WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  // await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:Colors.cyan,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.cyan,
          elevation: 20
        )
      ),
      darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black26,
    ),
      themeMode: ThemeMode.light,
      home: OnBoardingScreen(),
    );
  }
}

