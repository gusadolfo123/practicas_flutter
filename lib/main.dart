import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_flutter/pages/complex_page.dart';
import 'package:practice_flutter/pages/home2_page.dart';
import 'package:practice_flutter/pages/home_page.dart';
import 'package:practice_flutter/pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomePage(),
      initialRoute: "menu",
      routes: {
        "home": (BuildContext context) => HomePage(),
        "home2": (BuildContext context) => Home2Page(),
        "complex": (BuildContext context) => ComplexPage(),
        "menu": (BuildContext context) => MenuPage(),
      },
    );
  }
}
