import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percentodo/theme/colors.dart';
import 'package:percentodo/views/home/todo_list.dart';
import 'package:percentodo/views/home/todo_status.dart';
import 'package:intl/intl.dart';
import 'package:percentodo/views/home/todo_submit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/logo-small.svg"),
                    SizedBox(width: 12),
                    Text(
                      DateFormat(
                        'yyyy년 MM월 dd일 (E)',
                        "ko",
                      ).format(DateTime.now()),
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    )
                  ],
                ),
              ),
              TodoStatus(),
              TodoList()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return TodoSubmitWidget();
              });
        },
        backgroundColor: AppColors.black,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: AppColors.cream, items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "할 일"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "히스토리")
      ]),
    );
  }
}
