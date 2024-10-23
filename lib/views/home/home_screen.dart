import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percentodo/theme/colors.dart';
import 'package:percentodo/views/home/todo_status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/logo-small.svg"),
                  SizedBox(width: 12),
                  Text(
                    "2024년 10월 23일 (수)",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  )
                ],
              ),
            ),
            TodoStatus()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.black,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "할 일"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "히스토리")
      ]),
    );
  }
}
