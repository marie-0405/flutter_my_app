import 'package:flutter_my_app/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

final lightTheme = ThemeData.from(
  colorScheme: const ColorScheme.light(
    primary: Colors.amber,
    onPrimary: Colors.white,
    secondary: Colors.green,
  ),
);

final darkTheme = ThemeData.from(
  colorScheme: const ColorScheme.dark(
    primary: Colors.blue,
    onPrimary: Colors.white,
    secondary: Colors.blueAccent,
  ),
);
