import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
            appBar: AppBar(title: const Text("mmmmm")),
            body: Column(children: [
              Theme(
                  data: ThemeData(primaryColor: Colors.red),
                  child: const Sample(title: "Widget A")),
              Column(
                children: [
                  const Sample(title: "Widget B"),
                  Theme(
                    data: ThemeData(primaryColor: Colors.blue),
                    child: const Sample(title: "Widget C"),
                  )
                ],
              )
            ])));
  }
}

class Sample extends StatelessWidget {
  const Sample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 100,
        child: ColoredBox(
          color: Theme.of(context).primaryColor,
          child: Text(title),
        ));
  }
}
