import 'package:flutter/material.dart';
import 'countdown.dart';
import 'makecarddeck.dart';
import 'gamesetpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color(0xffB24B32), body: SetPage());
  }
}

class TopText extends StatelessWidget {
  const TopText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Icon(
              Icons.home,
              size: 34,
            ),
            SizedBox(
              width: 105,
            ),
            Text(
              "이미지 게임",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 189),
            child: Row(
              children: const [Text("카테고리 : 자본주의")],
            )),
      ],
    );
  }
}
