import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vizzhy_app/utils/AppColors.dart';

class RoundedIconContainer extends StatelessWidget {
  final IconData icon;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color iconColor;
  final double borderRadius;

  const RoundedIconContainer({
    Key? key,
    required this.icon,
    this.height = 0.05,
    this.width = 0.1,
    this.backgroundColor = AppColors.primaryColor,
    this.iconColor = Colors.white,
    this.borderRadius = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * height,
      width: Get.width * width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}
