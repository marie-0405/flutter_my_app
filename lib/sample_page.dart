import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("title")),
        body: Container(
            color: Colors.amber,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [Text("hoge"), Text("fuga"), Text("piyo")],
            )));
  }
}
