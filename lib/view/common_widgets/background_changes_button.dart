import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackgroundChangesButton extends StatelessWidget {
  const BackgroundChangesButton({Key? key, required this.event})
      : super(key: key);
  final void Function() event;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: event,
      child: Center(
        child: Text(
          "Hello There",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
      ),
    );
  }
}
