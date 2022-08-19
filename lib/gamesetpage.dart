import 'package:flutter/material.dart';

class SetPage extends StatefulWidget {
  const SetPage({Key? key}) : super(key: key);

  @override
  State<SetPage> createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  int cardcount = 0;
  int timecount = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Row(
        children: [
          IconButton(
              icon: const ImageIcon(
                AssetImage("assets/minusbutton.png"),
                size: 61,
              ),
              onPressed: minusCounter),
          Text(
            "$cardcount" "장",
            style: TextStyle(
                fontSize: 40, height: 60 / 40, fontWeight: FontWeight.w700),
          ),
          IconButton(
              icon: const ImageIcon(
                AssetImage("assets/addbutton.png"),
                size: 61,
              ),
              onPressed: incrementCounter),
        ],
      ),
      Text("예상게임시간 " "$timecount" "분"),
    ]));
  }

  void incrementCounter() {
    setState(() {
      cardcount = cardcount + 5;
      timecount = timecount + 10;
    });
  }

  void minusCounter() {
    setState(() {
      if (cardcount == 0) {
        cardcount = 0;
      } else {
        cardcount = cardcount - 5;
        timecount = timecount + 10;
      }
    });
  }
}
