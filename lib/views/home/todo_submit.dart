import 'package:flutter/material.dart';
import 'package:percentodo/theme/colors.dart';

class TodoSubmitWidget extends StatelessWidget {
  const TodoSubmitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.cream,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 66,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print("취소로직"),
                    child: Text("취소",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                            fontSize: 18)),
                  ),
                  Text("새로운 할일",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                          fontSize: 18)),
                  GestureDetector(
                    onTap: () => print("추가로직"),
                    child: Text("추가",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                            fontSize: 18)),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.white,
            ),
            child: TextField(
              cursorColor: AppColors.darkGray,
              style: TextStyle(
                fontSize: 18.0,
                color: AppColors.black,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '여기에 입력하세요',
                  hintStyle:
                      TextStyle(color: AppColors.lightGray, fontSize: 18)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "목표 시간",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.black),
                ),
                GestureDetector(
                  onTap: () => print("시간 고르기 ON"),
                  child: Text(
                    "11시 20분",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: AppColors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
