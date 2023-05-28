import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:solid_task/common_widgets/acrion_button.dart';
import 'package:solid_task/common_widgets/vertical_spacing.dart';
import 'package:solid_task/first_way/first_way_view.dart';
import 'package:solid_task/third_way/third_way_view.dart';
import '../../common_widgets/navigate.dart';
import '../../second_way/second_way_view.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SOLID Software Company\nTask",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            textAlign: TextAlign.center,
          ),
          const VerticalSpacing(2),
          ActionButton(
            onPressed: () {
              navigateTo(context, const FirstWayView());
            },
            text: "First way",
          ),
          const VerticalSpacing(2),
          ActionButton(
            onPressed: () {
              navigateTo(context, const SecondWayView());
            },
            text: "Second way",
          ),
          const VerticalSpacing(2),
          ActionButton(
            onPressed: () {
              navigateTo(context, const ThirdWayView());
            },
            text: "Third way",
          ),
        ],
      ),
    );
  }
}
