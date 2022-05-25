import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  final Color borderColor;
  bool? isIcon;

  AppButtons({
    Key? key,
    required this.color,
    this.text,
    this.icon,
    required this.backgroundColor,
    required this.borderColor,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.w),
        borderRadius: BorderRadius.circular(10.r),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: Text(
                text!,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: color),
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
