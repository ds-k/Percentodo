import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percentodo/theme/colors.dart';

class TodoStatus extends StatelessWidget {
  const TodoStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      height: 144,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 0),
              child: Text("오늘의 진행 상황",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700))),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child:
                          SvgPicture.asset("assets/images/sample-image.svg")),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("25% 진행했습니다!",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("4개 중 1개 완료",
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
          )
        ],
      ),
    );
  }
}
