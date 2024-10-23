import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("시작")),
      body: Column(
        children: [
          Container(),
          Column(
            children: [Container(), Row()],
          ),
          Container(),
          Column(
            children: [
              Text("오늘 할 일"),
              SizedBox(),
              Row(
                children: [
                  Image.asset(""),
                  Column(
                    children: [Text("할일"), Text("시간")],
                  )
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "할 일"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "히스토리")
      ]),
    );
  }
}
