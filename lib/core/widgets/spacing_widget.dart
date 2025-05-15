import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthSpace extends StatelessWidget {
  final double width;
  const WidthSpace(
    this.width, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
    );
  }
}

class HightSpace extends StatelessWidget {
  final double height;
  const HightSpace(
    this.height, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
    );
  }
}
