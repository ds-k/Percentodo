import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:percentodo/theme/colors.dart';
import 'package:percentodo/views/home/home_screen.dart';

void main() async {
  await initializeDateFormatting('ko');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Pretendard",
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.cream,
      ),
      home: HomeScreen(),
    );
  }
}
