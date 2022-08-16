import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("title")),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("hoge"),
            const Text("fuga"),
            const Text("piyo"),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                for (var i = 0; i < 9; i++)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColoredBox(color: Colors.blue),
                  )
              ],
            )
          ],
        ));
  }
}
