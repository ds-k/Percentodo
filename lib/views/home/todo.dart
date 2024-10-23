import 'package:flutter/material.dart';
import 'package:percentodo/theme/colors.dart';
import 'package:intl/intl.dart';

class Todo {
  final bool isCompleted;
  final String description;
  final DateTime dueDate;
  final int id;

  Todo({
    required this.isCompleted,
    required this.description,
    required this.dueDate,
    required this.id,
  });
}

class TodoWidget extends StatelessWidget {
  final Todo todo;
  const TodoWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          Container(
            width: 20,
            margin: EdgeInsets.only(right: 12),
            // decoration: BoxDecoration(color: Colors.red),
            // this.isCompleted 변수를 사용할 곳
            child: Checkbox(
                value: todo.isCompleted,
                onChanged: (bool? value) {
                  print("isCompleted 변경 로직 작성하세요");
                  // isCompleted -> true로 변경할 수 있도록 하는 로직 작성
                }),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(todo.description,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "${DateFormat('a h시 mm분').format(todo.dueDate)} 까지",
                      style: TextStyle(
                          color: AppColors.lightGray,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
