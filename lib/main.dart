import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pratice/navigator/tab_navigator.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //状态栏背景颜色
      statusBarIconBrightness: Brightness.dark // dark:一般显示黑色   light：一般显示白色
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: const ColorScheme.light(
            primary: Color(0xFFFFC700),
          ),
          primaryTextTheme: const TextTheme(
              headline6: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color.fromRGBO(51, 51, 51, 1))),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xffffffff),
              elevation: 0,
              iconTheme: IconThemeData(color: Color(0xFF000000)),
              titleTextStyle: TextStyle(
                  color: Color(0xFF041726),
                  fontSize: 18,
                  fontWeight: FontWeight.w500))),
      home: const TabNavigator(),
    );
  }
}
