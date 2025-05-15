import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatefulWidget {
  final String iconPath;
  final VoidCallback? onTap;

  const SocialMediaButton({super.key, required this.iconPath, this.onTap});

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 56.h,
          width: 105.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: Color(0xffE8ECF4), width: 1),
          ),
          child: SvgPicture.asset(
            widget.iconPath,
            width: 12.w,
            height: 24.h,
          ),
        ));
  }
}
