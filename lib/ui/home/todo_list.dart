import 'package:flutter/material.dart';
import 'package:percentodo/theme/colors.dart';
import 'package:percentodo/ui/home/todo.dart';

class TodoList extends StatelessWidget {
  TodoList({super.key});

  final List<Todo> todos = [
    Todo(
        id: 1,
        description: "UI 그리기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 2,
        description: "dart 공부",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 3,
        description: "flutter 공부",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 4,
        description: "밥 먹기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 5,
        description: "운동하기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 5,
        description: "운동하기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 5,
        description: "운동하기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 6,
        description: "운동하기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 7,
        description: "운동하기",
        dueDate: DateTime.now(),
        isCompleted: false),
    Todo(
        id: 8,
        description: "운동하기",
        dueDate: DateTime.now(),
        isCompleted: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: 64,
                // decoration: BoxDecoration(color: Colors.red),
                child: Text("오늘 할 일",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700))),
            Container(
              height: 1,
              color: AppColors.lightGray,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      return TodoWidget(todo: todos[index]);
                    })),
          ],
        ),
      ),
    );
  }
}
